package airline.management.system;

import java.awt.EventQueue;


import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;

public class add_reserve extends JFrame{ //Third Frame

    
	JTextField textField,textField_1,textField_2,textField_3,textField_4,textField_5,textField_6;

        public add_reserve(){
            getContentPane().setForeground(Color.BLUE);
            getContentPane().setBackground(Color.WHITE);
            setTitle("RESERVETION");
		 
            setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
            setSize(778,486);
            getContentPane().setLayout(null);
			
            JLabel ticketId = new JLabel("TICKETID");
            ticketId.setFont(new Font("Tahoma", Font.PLAIN, 17));
            ticketId.setBounds(60, 80, 150, 27);
            add(ticketId);
            
            textField = new JTextField();
            textField.setBounds(200, 80, 150, 27);
            add(textField);
			
            JButton Next = new JButton("PROCEED");
            Next.setBounds(200, 420, 150, 30);
            Next.setBackground(Color.BLACK);
            Next.setForeground(Color.WHITE);
            add(Next);
			
            JLabel Pnrno = new JLabel("PNR NO");
            Pnrno.setFont(new Font("Tahoma", Font.PLAIN, 17));
            Pnrno.setBounds(60, 120, 150, 27);
            add(Pnrno);
			
            textField_1 = new JTextField();
            textField_1.setBounds(200, 120, 150, 27);
            add(textField_1);
            
            JLabel FlightCode = new JLabel("FLIGHT CODE");
            FlightCode.setFont(new Font("Tahoma", Font.PLAIN, 17));
            FlightCode.setBounds(60, 170, 150, 27);
            add(FlightCode);
			
            textField_2 = new JTextField();
            textField_2.setBounds(200, 170, 150, 27);
            add(textField_2);
            		
            JLabel jnyDate = new JLabel("JOURNEY DATE");
            jnyDate.setFont(new Font("Tahoma", Font.PLAIN, 17));
            jnyDate.setBounds(60, 220, 150, 27);
            add(jnyDate);
			
            textField_3 = new JTextField();
            textField_3.setBounds(200, 220, 150, 27);
            add(textField_3);
	
            JLabel jnyTime = new JLabel("JOURNEY TIME");
            jnyTime.setFont(new Font("Tahoma", Font.PLAIN, 17));
            jnyTime.setBounds(60, 270, 150, 27);
            add(jnyTime);
	
            textField_4 = new JTextField();
            textField_4.setBounds(200, 270, 150, 27);
            add(textField_4);
	
            JLabel Src = new JLabel("FROM");
            Src.setFont(new Font("Tahoma", Font.PLAIN, 17));
            Src.setBounds(60, 320, 150, 27);
            add(Src);

             textField_5 = new JTextField();
            textField_5.setBounds(200, 320, 150, 27);
            add(textField_5);
            
            JLabel Dst = new JLabel("TO");
            Dst.setFont(new Font("Tahoma", Font.PLAIN, 17));
            Dst.setBounds(60, 370, 150, 27);
            add(Dst);
			
            textField_6 = new JTextField();
            textField_6.setBounds(200, 370, 150, 27);
            add(textField_6);
	
            setVisible(true);
	
            JLabel AddPassengers = new JLabel("RESERVATION");
            AddPassengers.setForeground(Color.BLUE);
            AddPassengers.setFont(new Font("Tahoma", Font.PLAIN, 31));
            AddPassengers.setBounds(420, 24, 442, 35);
            add(AddPassengers);
            
            
            ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("airline/management/system/icon/emp.png"));
            JLabel image = new JLabel(i1);
            image.setBounds(450,80,280,410);
            add(image);

            
            Next.addActionListener(new ActionListener(){
                public void actionPerformed(ActionEvent ae){
                    String ticket_id = textField.getText();
                    String pnr_no = textField_1.getText();
                    String f_code = textField_2.getText();
                    String jny_date = textField_3.getText();
                    String jny_time = textField_4.getText();
                    String src = textField_5.getText();
                    String dst =  textField_6.getText();
                    
                    
                    try {
                        conn c = new conn();
                        String str = "INSERT INTO reservation(pnr_no, ticket_id, f_code) VALUES ( '"+pnr_no+"', '"+ticket_id+"', '"+f_code+"')";
                        String str2 = "INSERT INTO jrnydetails(f_code, jny_date, jny_time, src, dst) VALUES ( '"+f_code+"', '"+jny_date+"', '"+jny_time+"', '"+src+"','"+dst+"')";
                        c.s.executeUpdate(str);
                        c.s.executeUpdate(str2);
                        JOptionPane.showMessageDialog(null,"Reservation Done");
                        
                    
                    } catch (Exception e) {
                        e.printStackTrace();
        	    }
		}
            });
			
            setSize(900,600);
            setVisible(true);
            setLocation(400,200);
			
	}
        
    public static void main(String[] args){
        new add_reserve();
    }   
}