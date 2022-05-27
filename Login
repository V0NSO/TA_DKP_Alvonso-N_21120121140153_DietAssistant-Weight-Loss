package com.company;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Login {
    private JTextField Password;
    private JTextField Username;
    public JPanel panel;
    private JButton KE_PROG;


    public Login() {
        KE_PROG.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (Username.getText().equals("Alvonso") && Password.getText().equals("UNDIP21")){
                    JFrame frame = new JFrame("Login");
                    frame.setContentPane(new PROG_TA().panel);
                    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                    frame.pack();
                    frame.setVisible(true);
                }
                else {
                    JOptionPane.showMessageDialog(null, "ID atau Password salah");
                    Username.setText("");
                    Password.setText("");
                    Username.requestFocus();
                }
            }
        });
        }
    public static void main(String[] args) {
        JFrame frame = new JFrame("Login");
        frame.setContentPane(new Login().panel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);

    }
}

