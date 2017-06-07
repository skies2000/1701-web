package bean;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardDao {
	Connection conn;
	String uploadPath = "C:/workspace/1701-web/WebContent/upload/";
	String encoding = "utf-8";
	int size = 1024*1024*10;
	MultipartRequest multi = null;
	
	PageVo pVo;
	public BoardDao(){
		conn = new DBConnect().getConn(); 
	}
	
	@SuppressWarnings("finally")
	public int insert(HttpServletRequest req){ 
		List<String> attFiles = new ArrayList<String>();
		List<String> oriAttFiles = new ArrayList<String>();
		
		int rs = 0;
		PreparedStatement ps = null;
		String sql = null;
		
		try{
			multi = new MultipartRequest(req, 
					uploadPath,
					size,
					encoding,
					new DefaultFileRenamePolicy());
			
			@SuppressWarnings("unchecked")
			Enumeration<String> files = multi.getFileNames();
			while(files.hasMoreElements()){
				String file1 = files.nextElement();
				attFiles.add(multi.getFilesystemName(file1));
				oriAttFiles.add(multi.getOriginalFileName(file1));
			}
			
			sql = "insert into board(serial, grp, deep, mdate, worker, subject, content, hit) "
					+ "values(seq_board_serial.nextval, seq_board_serial.currval, seq_board_serial.currval, sysdate, ?,?,?,0)";
			
			ps = conn.prepareStatement(sql);
			
			 
			
			ps.setString(1, multi.getParameter("worker"));
			ps.setString(2,multi.getParameter("subject"));
			ps.setString(3, multi.getParameter("content"));
		 	
			rs = ps.executeUpdate();
			
			for(int i=0; i<attFiles.size(); i++){
				if(attFiles.get(i)==null) continue;
				sql = "insert into board_att(serial, pserial, attfile, oriattfile) "
					+ "values(seq_board_att_serial.nextval, seq_board_serial.currval,?,?)";
				ps = conn.prepareStatement(sql);
				ps.setString(1, attFiles.get(i));
				ps.setString(2, oriAttFiles.get(i));
				
				rs = ps.executeUpdate();
				
				String fileName = attFiles.get(i);
				ParameterBlock pb = new ParameterBlock();
				pb.add(uploadPath+""+fileName);
				RenderedOp rOp = JAI.create("fileload", pb); // fileload는 jai가 제공하는 코덱
				
				BufferedImage bi = rOp.getAsBufferedImage(); //원본이미지
				BufferedImage thumb = new BufferedImage(100,100,BufferedImage.TYPE_INT_BGR); //메모리에만 공간생성, 공간할당
				
				Graphics2D g = thumb.createGraphics();	//그래픽을 그릴수 있는 그래픽적 요소
				g.drawImage(bi, 0, 0, 100,100,null);   //사진에 해당하는걸 그린다.
				
				File file = new File(uploadPath+"/sm_"+fileName);
				ImageIO.write(thumb,"jpg",file); //메모리에 있는 그림을 file에 저장
				
				
			}
			
		}catch(Exception ex){
			rs = -1;
			ex.printStackTrace();
		}finally{
			return rs;
		}
	}
	@SuppressWarnings("finally")
	public ArrayList<BoardVo> list(){
		ArrayList<BoardVo> list = null;
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select * from board order by mdate desc";
		
		list = new ArrayList<BoardVo>();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()){
				BoardVo vo = new BoardVo();
				vo.setSerial(rs.getInt("serial"));
				vo.setmDate(rs.getString("mdate"));
				vo.setWorker(rs.getString("worker"));
				vo.setSubject(rs.getString("subject"));
				vo.setContent(rs.getString("content"));
				vo.setHit(rs.getInt("hit"));
				
				
				list.add(vo);
				
				
			}
			
		}catch(Exception ex){
		}finally{
			return list;	
		}
	}
	@SuppressWarnings("finally")
	public ArrayList<BoardVo> list(String findStr){
		ArrayList<BoardVo> list = null;
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select * from board where worker like ? or "
				   + "subject like ? "
				   + "order by mdate desc";
		
		list = new ArrayList<BoardVo>();
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+findStr+"%");
			ps.setString(2,"%"+findStr+"%");
			rs = ps.executeQuery();
			
			while(rs.next()){
				BoardVo vo = new BoardVo();
				vo.setSerial(rs.getInt("serial"));
				vo.setmDate(rs.getString("mdate"));
				vo.setWorker(rs.getString("worker"));
				vo.setSubject(rs.getString("subject"));
				vo.setContent(rs.getString("content"));
				vo.setHit(rs.getInt("hit"));
				
				list.add(vo);
			}
			
		}catch(Exception ex){
		}finally{
			return list;	
		}
	}
	 public void pageCompute(BoardVo v){
		  pVo = new PageVo();
		  
		  int totList = 0; //리스트 전체 개수
		  int totPage = 0; // 전체 페이지수
		  int totBlock = 0;	//전체 블럭수
		  
		  int nowBlock = 1; // 현재 블럭
		  int startNo = 0; //리스트 목록의 시작위치
		  int endNo = 0; //리스트 목록의 마지막 위치
		  
		  int startPage = 0; // 한블럭에 표시할 시작 페이지 번호
		  int endPage = 0; // 한블럭에 표시할 마지막 페이지 번호
		  
		  int nowPage = v.getNowPage(); // 현재 페이지
		  
		  PreparedStatement ps = null;
		  ResultSet rs = null; 
		  String findStr = v.getFindStr();
		  
		  
		  String sql = "select count(*) cnt from board where worker like ? or "
				    + "subject like ? or content like ?";
		  try{
			  ps = conn.prepareStatement(sql);
			  ps.setString(1, "%" + findStr + "%");
			  ps.setString(2, "%" + findStr + "%");
			  ps.setString(3, "%" + findStr + "%");
			  rs = ps.executeQuery();
			  rs.next();
			  
			  totList = rs.getInt("cnt");
			  totPage = (int)Math.ceil(totList/(pVo.getListSize()*1.0));
			  totBlock = (int)Math.ceil(totPage/(pVo.getBlockSize()*1.0));
			  nowBlock = (int)Math.ceil(nowPage/(pVo.getBlockSize()*1.0));
			  
			  endPage = nowBlock * pVo.getBlockSize();
			  startPage = endPage - pVo.getBlockSize()+1;
			  endNo = nowPage * pVo.getListSize(); 
			  startNo = endNo - pVo.getListSize();
			  
			  if(endPage > totPage) endPage = totPage;
			  if(endNo > totList) endNo = totList;
			  
			  pVo.setTotList(totList);
			  pVo.setTotBlock(totBlock);
			  pVo.setEndNo(endNo);
			  pVo.setEndPage(endPage);
			  pVo.setNowBlock(nowBlock);
			  pVo.setStartNo(startNo);
			  pVo.setStartPage(startPage);
			  pVo.setTotPage(totPage);
			  pVo.setNowPage(nowPage);
			  
			  ps.close();
			  rs.close();
		  }catch(Exception ex){
			  ex.printStackTrace();
		  }
				  
	  }
	 public PageVo getpVo(){
		 return pVo;
	 }
	@SuppressWarnings("finally")
	public ArrayList<BoardVo> list(BoardVo v){
		pageCompute(v);
		
		ArrayList<BoardVo> list = null;
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		String findStr = v.getFindStr();
		String replStr = "";
		String sql = "select * from("
				+" select rownum no, brd.* from("
				+" select * from board where worker like ? or subject like ? "
				+" order by grp desc, deep asc"
				+" )brd"
				+") where no between ? and ?";
		
		list = new ArrayList<BoardVo>();
		try{ 
			ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+findStr+"%");
			ps.setString(2,"%"+findStr+"%");
			ps.setInt(3, pVo.getStartNo());
			ps.setInt(4, pVo.getEndNo());
			rs = ps.executeQuery();
			
			while(rs.next()){
				replStr = "";
				int deep = rs.getString("deep").split("-").length;
				if(deep>1){
					for(int i=3; i<=deep; i++){
						replStr+="&nbsp;&nbsp;";					
						}
					replStr+='└';
				}
				BoardVo vo = new BoardVo();
				vo.setSerial(rs.getInt("serial"));
				vo.setmDate(rs.getString("mdate"));
				vo.setWorker(rs.getString("worker"));
				vo.setSubject(replStr+rs.getString("subject"));
				vo.setHit(rs.getInt("hit"));
				
				list.add(vo);
			}
		}catch(Exception ex){
		}finally{
			return list;	
			
		}
	}
	@SuppressWarnings("finally")
	public BoardVo choiceList(BoardVo vo){
		
		int serial = vo.getSerial();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="";
		BoardVo v = new BoardVo();
		List<String> attFile = new ArrayList<String>();
		List<String> oriFile = new ArrayList<String>();
		sql = "select * from board where serial = ?";
		try{
			ps = conn.prepareStatement(sql);
			ps.setInt(1,serial);
			rs = ps.executeQuery();
			rs.next();		
			v.setSerial(rs.getInt("serial"));
			v.setWorker(rs.getString("worker"));
			v.setmDate(rs.getString("mDate"));
			v.setSubject(rs.getString("subject"));
			v.setContent(rs.getString("content"));
			v.setHit(rs.getInt("hit"));
			v.setGrp(rs.getInt("grp"));
			v.setDeep(rs.getString("deep"));
			
			
			v.setFindStr(vo.getFindStr());
			v.setNowPage(vo.getNowPage());
			sql = "select attfile, oriattfile from board_att where pserial=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, vo.getSerial());
			ResultSet re2 = ps.executeQuery();
			while(re2.next()){
			
				
				attFile.add(re2.getString("attfile"));
				oriFile.add(re2.getString("oriattfile"));
			}
			v.setAttfile(attFile);
			v.setOriAttfile(oriFile);
			
			sql = "update board set hit = hit+1 where serial=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,serial);
			ps.executeUpdate();
			
		}catch(Exception ex){
			ex.printStackTrace();
			v=null;
			
		}finally{
			return v;
		}
	}
	@SuppressWarnings("finally")
	public int delete(BoardVo vo){
		int r = 0;
		ResultSet rs = null;
		PreparedStatement ps = null;
		
		
		File deleteFile =  null;
		
		String sql = "delete from board where serial=?";
		int serial = vo.getSerial();
		try{
			ps = conn.prepareStatement(sql);
			ps.setInt(1, serial);
			r = ps.executeUpdate();
			
		sql = "select * from board_att where pserial=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, serial);
		rs = ps.executeQuery();
		
		//첨부 파일 삭제
		while(rs.next()){
			deleteFile = new File(uploadPath+rs.getString("attfile"));
			if(deleteFile.exists()){
				deleteFile.delete();
			}
			deleteFile = new File(uploadPath+"sm_"+rs.getString("attfile"));
			if(deleteFile.exists()){
				deleteFile.delete();
			}
		}
		sql = "delete from board_att where pserial=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, serial);
		ps.executeUpdate();
		
		}catch(Exception ex){
			r=-1;
			ex.printStackTrace();
		}finally{
			return r;
		}
	}
	@SuppressWarnings("finally")
	public BoardVo serialSelect(BoardVo vo){
		int serial = vo.getSerial();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="";
		List<String> attFile = new ArrayList<String>();
		List<String> oriFile = new ArrayList<String>();
		BoardVo v = new BoardVo();
		v.setFindStr(vo.getFindStr());
		v.setNowPage(vo.getNowPage());
		sql = "select * from board where serial = ?";
		try{
			ps = conn.prepareStatement(sql);
			ps.setInt(1,serial);
			rs = ps.executeQuery();
			if(rs.next()){
				v.setSerial(rs.getInt("serial"));
				v.setWorker(rs.getString("worker"));
				v.setmDate(rs.getString("mDate"));
				v.setSubject(rs.getString("subject"));
				v.setContent(rs.getString("content"));
				v.setHit(rs.getInt("hit"));
				v.setGrp(rs.getInt("grp"));
				v.setDeep(rs.getString("deep"));
				
				
				v.setFindStr(vo.getFindStr());
				v.setNowPage(vo.getNowPage());
				sql = "select attfile, oriattfile from board_att where pserial=?";
				ps = conn.prepareStatement(sql);
				ps.setInt(1, vo.getSerial());
				ResultSet re2 = ps.executeQuery();
				while(re2.next()){
					attFile.add(re2.getString("attfile"));
					oriFile.add(re2.getString("oriattfile"));
				}
				
				v.setAttfile(attFile);
				v.setOriAttfile(oriFile);
				
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			return v;
		}
	}
	@SuppressWarnings("finally")
	public int modify(BoardVo vo){
		int rs = 0;
		PreparedStatement ps = null;
		String sql="";
		sql = "update board set worker = ?, subject = ?, content = ? where serial=?";
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1,vo.getWorker());
			ps.setString(2,vo.getSubject());
			ps.setString(3,vo.getContent());
			ps.setInt(4,vo.getSerial());
			rs = ps.executeUpdate();
		}catch(Exception ex){
			rs=-1;
			ex.printStackTrace();
		}finally{
			return rs;
		}
	}
	@SuppressWarnings({ "finally", "unchecked" })
	public BoardVo modify(HttpServletRequest req){
		List<String> attFiles = new ArrayList<String>();
		List<String> oriAttFiles = new ArrayList<String>();
		PreparedStatement ps = null;
		int r = 0;
		String sql = "";
		BoardVo vo = null;
		BoardVo tempVo = null;
		String tempFile = null;
		String file1 = null;
		String file2 = null;
		String oriFile1 = null;
		String oriFile2 = null;
		String[] delFile = null;
		try{
			multi = new MultipartRequest(req,
					uploadPath,
					size,
					encoding,
					new DefaultFileRenamePolicy());
		Enumeration<String> files = multi.getFileNames();
		
		while(files.hasMoreElements()){
			tempFile = files.nextElement();
			attFiles.add(multi.getFilesystemName(tempFile));
			oriAttFiles.add(multi.getOriginalFileName(tempFile));
			
		}
		
		sql = "update board set worker = ?, subject = ?, content = ? where serial=?";
		
			ps = conn.prepareStatement(sql);
			ps.setString(1,multi.getParameter("worker"));
			ps.setString(2,multi.getParameter("subject"));
			ps.setString(3,multi.getParameter("content"));
			ps.setString(4,multi.getParameter("serial"));
			
			r = ps.executeUpdate();
		
		
		for(int i=0; i<attFiles.size();i++){
			if(attFiles.get(i)==null) continue;
			sql = "insert into board_att(serial,pserial,attfile,oriattfile) "
				+ "values(seq_board_att_serial.nextval,?,?,?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, multi.getParameter("serial"));
			ps.setString(2, attFiles.get(i));
			ps.setString(3, oriAttFiles.get(i));;
			
			r = ps.executeUpdate();
			
			String fileName = attFiles.get(i);
			ParameterBlock pb = new ParameterBlock();
			pb.add(uploadPath+""+fileName);
			RenderedOp rOp = JAI.create("fileload", pb);
			
			BufferedImage bi = rOp.getAsBufferedImage();
			BufferedImage thumb = new BufferedImage(100,100,BufferedImage.TYPE_INT_BGR);
			
			Graphics2D g = thumb.createGraphics();
			g.drawImage(bi, 0, 0, 100,100,null);
			
			File file = new File(uploadPath+"/sm_"+fileName);
			ImageIO.write(thumb,"jpg",file); 
			
			
		}
			
		if(multi.getParameter("deleteFile")!=null){
			delFile = multi.getParameterValues("deleteFile");
			for(int i=0; i<delFile.length; i++){
				sql = "delete from board_att where attfile=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, delFile[i]);
				ps.executeUpdate();
				
				File f = new File("../../upload/"+delFile[i]);
				if(f.exists())f.delete();
				File sf = new File("../../upload/sm_"+delFile[i]);
				if(f.exists())sf.delete();
			}
		}
		vo = new BoardVo();
		vo.setSerial(Integer.parseInt(multi.getParameter("serial")));
		vo.setFindStr(multi.getParameter("findStr"));
		vo.setNowPage(Integer.parseInt(multi.getParameter("nowPage")));
		}catch(Exception ex){
			vo = null;
			ex.printStackTrace();
		}finally {
			
			return vo;
		}
		
	}
	/*
	@SuppressWarnings("finally")
	public int insertRepl(BoardVo vo){
		 PreparedStatement ps = null;
		  int r = 0;
		  String sql = "insert into board(serial, mdate, worker, subject, content, hit, grp, deep,attfile,ori_attfile) "
				     + "values(seq_board_serial.nextval, sysdate, ?,?,?,0,?,?||'-'||seq_board_serial.currval,?,?)";//||을 이용해 문자열을 합쳐준다.
		  try{
			  ps = conn.prepareStatement(sql);
			  ps.setString(1, vo.getWorker());
			  ps.setString(2, vo.getSubject());
			  ps.setString(3, vo.getContent());
			  ps.setInt(4, vo.getGrp());
			  ps.setString(5, vo.getDeep());
			  ps.setString(6, vo.getAttFile()[0]+","+vo.getAttFile()[1]);
			  ps.setString(7, vo.getOri_attFile()[0]+","+vo.getOri_attFile()[1]);

			  r = ps.executeUpdate();
		  }catch(Exception ex){
			  ex.printStackTrace();
		  }finally{
			  return r;
		  }
	}
	
	*/
	@SuppressWarnings("finally")
	public BoardVo insertRepl(HttpServletRequest req){
		 PreparedStatement ps = null;
		 BoardVo vo = new BoardVo();
		 List<String> attFiles = new ArrayList<String>();
		 List<String> oriAttFiles = new ArrayList<String>();
		 int np = 1;
		 String file1 = null;
		  try{
				MultipartRequest multi = 
						new MultipartRequest(req,
								uploadPath,
								size,
								encoding,
								new DefaultFileRenamePolicy()); //DefaultFileRenamePolicy()는 동일한 파일일 경우 파일 이름 뒤에 시리얼 자동 추가
				//첨부파일 
				@SuppressWarnings("unchecked")
				Enumeration<String> files = multi.getFileNames();
				
				while(files.hasMoreElements()){
					file1 = files.nextElement();
					attFiles.add(multi.getFilesystemName(file1));
					oriAttFiles.add(multi.getOriginalFileName(file1));
				}
				
				vo.setWorker(multi.getParameter("worker")); 
				vo.setSubject(multi.getParameter("subject"));
				vo.setContent(multi.getParameter("content"));
				vo.setGrp(Integer.parseInt(multi.getParameter("grp")));
				vo.setDeep(multi.getParameter("deep"));
				vo.setFindStr(multi.getParameter("findStr"));
				vo.setSerial(Integer.parseInt(multi.getParameter("serial")));
				
				if(multi.getParameter("nowPage").equals("")){
					np = 1;
				}else{
					np = Integer.parseInt(multi.getParameter("nowPage"));
				}
		  
				vo.setNowPage(np);
		  String sql = "insert into board(serial, mdate, worker, subject, content, hit, grp, deep) "
				     + "values(seq_board_serial.nextval, sysdate, ?,?,?,0,?,?||'-'||seq_board_serial.currval)";//||을 이용해 문자열을 합쳐준다.
		  
			  ps = conn.prepareStatement(sql);
			  ps.setString(1, vo.getWorker());
			  ps.setString(2, vo.getSubject());
			  ps.setString(3, vo.getContent());
			  ps.setInt(4, vo.getGrp());
			  ps.setString(5, vo.getDeep());
			  ps.executeUpdate();
			  
			 	
				
				for(int i=0; i<attFiles.size(); i++){
					if(attFiles.get(i)==null) continue;
					sql = "insert into board_att(serial, pserial, attfile, oriattfile) "
						+ "values(seq_board_att_serial.nextval, seq_board_serial.currval,?,?)";
					ps = conn.prepareStatement(sql);
					ps.setString(1, attFiles.get(i));
					ps.setString(2, oriAttFiles.get(i));
					
					ps.executeUpdate();
					String fileName = attFiles.get(i);
					ParameterBlock pb = new ParameterBlock();
					pb.add(uploadPath+""+fileName);
					RenderedOp rOp = JAI.create("fileload", pb);
					
					BufferedImage bi = rOp.getAsBufferedImage();
					BufferedImage thumb = new BufferedImage(100,100,BufferedImage.TYPE_INT_BGR);
					
					Graphics2D g = thumb.createGraphics();
					g.drawImage(bi, 0, 0, 100,100,null);
					
					File file = new File(uploadPath+"/sm_"+fileName);
					ImageIO.write(thumb,"jpg",file); 
				}
			  

		  }catch(Exception ex){
			  ex.printStackTrace();
			  vo = null;
		  }finally{
			  return vo;
		  }
	}
	
	public List<BoardVo> messageList(HttpServletRequest req){
		List<BoardVo> list = new ArrayList<BoardVo>();
		
		
		
		
		return list;
	}
	
	
	  	
}
