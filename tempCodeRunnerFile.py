                    #3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333{purchases Tab}
                    tab_purchases = ttk.Notebook(tab16)
                    tab16_1 =  ttk.Frame(tab_purchases)
                    tab16_2=  ttk.Frame(tab_purchases)
                    tab16_3= ttk.Frame(tab_purchases)
                    tab16_4=  ttk.Frame(tab_purchases)

                    tab_purchases.add(tab16_1,compound = LEFT, text ='Vendor')
                    tab_purchases.add(tab16_2,compound = LEFT, text ='Bill')
                    tab_purchases.add(tab16_3,compound = LEFT, text ='Payment')
                    tab_purchases.add(tab16_4,compound = LEFT, text ='Debit Note')
                    tab_purchases.pack(expand = 1, fill ="both")
                    ########################################################Debit Note#####################################################
                    #-------------------------------Debit Note-----------------------------#
                    tab16_4.grid_columnconfigure(0,weight=1)
                    tab16_4.grid_rowconfigure(0,weight=1)

                    main_frame_debitNote = Frame(tab16_4)
                    main_frame_debitNote.grid(row=0,column=0,sticky='nsew')

                    def debitNote_responsive_widgets(event):
                        dwidth = event.width
                        dheight = event.height
                        dcanvas = event.widget

                        r1 = 25  
                        x1 = dwidth/63
                        x2 = dwidth/1.021
                        y1 = dheight/14 
                        y2 = dheight/3.505

                        dcanvas.coords("debitNotepoly1",x1 + r1,y1,
                        x1 + r1,y1,
                        x2 - r1,y1,
                        x2 - r1,y1,     
                        x2,y1,     
                    #--------------------
                        x2,y1 + r1,     
                        x2,y1 + r1,     
                        x2,y2 - r1,     
                        x2,y2 - r1,     
                        x2,y2,
                    #--------------------
                        x2 - r1,y2,     
                        x2 - r1,y2,     
                        x1 + r1,y2,
                        x1 + r1,y2,
                        x1,y2,
                            #--------------------
                        x1,y2 - r1,
                        x1,y2 - r1,
                        x1,y1 + r1,
                        x1,y1 + r1,
                        x1,y1,
                        )
                        dcanvas.coords("debitNotehline",dwidth/21,dheight/4.67,dwidth/1.055,dheight/4.67)
                        dcanvas.coords("debitNotelabel1_1",dwidth/1.999,dheight/7.00)
                        dcanvas.coords("debittree1",dwidth/2,dheight/1.8)
                        dcanvas.coords("vnbutton2",dwidth/1.59,dheight/2.4)

                        dcanvas.coords("searchbutton2",dwidth/3,dheight/2.4)
                        dcanvas.coords("seacrhentry3",dwidth/13,dheight/2.4)
                        
                        dcanvas.coords("vnbutton3",dwidth/1.26,dheight/2.4)

                        r2 = 25
                        x11 = dwidth/63
                        x21 = dwidth/1.021
                        y11 = dheight/2.8
                        y21 = dheight/0.8

                        dcanvas.coords("debitNotepoly2",x11 + r2,y11,
                        x11 + r2,y11,
                        x21 - r2,y11,
                        x21 - r2,y11,     
                        x21,y11,     
                        #--------------------
                        x21,y11 + r2,     
                        x21,y11 + r2,     
                        x21,y21 - r2,     
                        x21,y21 - r2,     
                        x21,y21,
                        #--------------------
                        x21 - r2,y21,     
                        x21 - r2,y21,     
                        x11 + r2,y21,
                        x11 + r2,y21,
                        x11,y21,
                        #--------------------
                        x11,y21 - r2,
                        x11,y21 - r2,
                        x11,y11 + r2,
                        x11,y11 + r2,
                        x11,y11,
                        )
                        


                    debitNote_canvas = Canvas(main_frame_debitNote,height=700,bg='#2f516f',scrollregion=(0,0,700,1200))

                    main_frame_debitNote.grid_rowconfigure(0,weight=1)
                    main_frame_debitNote.grid_columnconfigure(0,weight=1)

                    debitNote_Scroll = Scrollbar(main_frame_debitNote,orient=VERTICAL)
                    debitNote_Scroll.grid(row=0,column=1,sticky='ns')
                    debitNote_Scroll.config(command=debitNote_canvas.yview)

                    debitNote_canvas.bind("<Configure>", debitNote_responsive_widgets)
                    debitNote_canvas.config(yscrollcommand=debitNote_Scroll.set)
                    debitNote_canvas.grid(row=0,column=0,sticky='nsew')
                    #---------------------------------------------------------------------------Header File
                    debitNote_canvas.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("debitNotepoly1"))

                    label_1 = Label(debitNote_canvas,width=10,height=1,text="Debit Note", font=('arial 25'),background="#1b3857",fg="white") 
                    window_label_1 = debitNote_canvas.create_window(0, 0, anchor="c", window=label_1, tags=("debitNotelabel1_1"))

                    debitNote_canvas.create_line(0,0,0,0,fill='gray',width=1,tags=("debitNotehline"))

                    debitNote_canvas.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("debitNotepoly2"))

                    fgthi = ttk.Style()
                    fgthi.configure('mystyle105.Treeview.Heading', background='#2f516f',State='DISABLE')

                    debitNote_scrollbar = Scrollbar(main_frame_debitNote,orient="vertical")


                    debitNote_tree = ttk.Treeview(debitNote_canvas, columns = (1,2,3,4,5), height = 10, show = "headings",style='mystyle105.Treeview',yscrollcommand=debitNote_scrollbar.set)
                    debitNote_tree.heading(1, text="Date")
                    debitNote_tree.heading(2, text="Debit Number")
                    debitNote_tree.heading(3, text="Vendor")
                    debitNote_tree.heading(4, text="Tax Amount")
                    debitNote_tree.heading(5, text="Amount")

                    
                    debitNote_tree.column(1, width = 120)
                    debitNote_tree.column(2, width = 270)
                    debitNote_tree.column(3, width = 290)
                    debitNote_tree.column(4, width = 220)
                    debitNote_tree.column(5, width = 220)

                    window_label_4 = debitNote_canvas.create_window(0, 0, anchor="n", window=debitNote_tree,tags=('debittree1'))

                    debitNote_scrollbar.config(command=debitNote_tree.yview)
                    debitNote_scrollbar.grid(row=0,column=2,sticky='ns')

                    sql_dn="select * from auth_user where username=%s"
                    sql_dn_val=(nm_ent.get(),)
                    fbcursor.execute(sql_dn,sql_dn_val,)
                    dn_dtl=fbcursor.fetchone()


                    c_sql_1 = "SELECT * FROM app1_debitnote where usr_id=%s"
                    c_val_1 = (dn_dtl[0],)
                    fbcursor.execute(c_sql_1,c_val_1,)
                    c_data_1 = fbcursor.fetchall()

                    count0 = 0
                    for i in c_data_1:
                        if True:
                            debitNote_tree.insert(parent='',index='end',iid=i,text='',values=(i[5],i[1],i[2],i[13],i[11])) 
                        else:
                            pass
                    count0 += 1


                    ######################################################## Add Debit Note #####################################################
                    def add_DN():
                        main_frame_debitNote.grid_forget()
                        addDN_frame = Frame(tab16_4)
                        addDN_frame.grid(row=0,column=0,sticky='nsew')

                        def addDN_responsive_widgets(event):
                            dwidth = event.width
                            dheight = event.height
                            dcanvas = event.widget
                            
                            r1 = 25
                            x1 = dwidth/63
                            x2 = dwidth/1.021
                            y1 = dheight/14 
                            y2 = dheight/3.505

                            dcanvas.coords("adnpoly1",x1 + r1,y1,
                            x1 + r1,y1,
                            x2 - r1,y1,
                            x2 - r1,y1,     
                            x2,y1,     
                            #--------------------
                            x2,y1 + r1,     
                            x2,y1 + r1,     
                            x2,y2 - r1,     
                            x2,y2 - r1,     
                            x2,y2,
                            #--------------------
                            x2 - r1,y2,     
                            x2 - r1,y2,     
                            x1 + r1,y2,
                            x1 + r1,y2,
                            x1,y2,
                            #--------------------
                            x1,y2 - r1,
                            x1,y2 - r1,
                            x1,y1 + r1,
                            x1,y1 + r1,
                            x1,y1,
                            )

                            dcanvas.coords("adnlabel1",dwidth/1.999,dheight/7.00)
                            dcanvas.coords("adnhline",dwidth/21,dheight/4.67,dwidth/1.055,dheight/4.67)


                            r2 = 25
                            x11 = dwidth/63
                            x21 = dwidth/1.021
                            y11 = dheight/2.8
                            y21 = dheight/0.4


                            dcanvas.coords("adnpoly2",x11 + r2,y11,
                            x11 + r2,y11,
                            x21 - r2,y11,
                            x21 - r2,y11,     
                            x21,y11,     
                            #--------------------
                            x21,y11 + r2,     
                            x21,y11 + r2,     
                            x21,y21 - r2,     
                            x21,y21 - r2,     
                            x21,y21,
                            #--------------------
                            x21 - r2,y21,     
                            x21 - r2,y21,     
                            x11 + r2,y21,
                            x11 + r2,y21,
                            x11,y21,
                            #--------------------
                            x11,y21 - r2,
                            x11,y21 - r2,
                            x11,y11 + r2,
                            x11,y11 + r2,
                            x11,y11,
                            )

                            dcanvas.coords("adnbutton1",dwidth/23,dheight/3.415)
                            dcanvas.coords("adnbutton1",dwidth/23,dheight/3.415)
                            dcanvas.coords("adnlabel3",dwidth/18.5,dheight/2.5)
                            dcanvas.coords("adncombo1",dwidth/18.5,dheight/2.1)
                            dcanvas.coords("aibutton1",dwidth/4,dheight/2.1)

                            dcanvas.coords("ailabel6",dwidth/3.34,dheight/2.5)
                            dcanvas.coords("aientry1",dwidth/3.34,dheight/2.1)

                            dcanvas.coords("ailabel9",dwidth/18.5,dheight/1.6)
                            dcanvas.coords("aientry2",dwidth/18.5,dheight/1.4)

                            dcanvas.coords("ailabel29",dwidth/3.34,dheight/1.6)

                            dcanvas.coords("ailabel10",dwidth/18.5,dheight/.97)
                            dcanvas.coords("aicombo3",dwidth/18.5,dheight/.9)

                            dcanvas.coords("adnlabelbill",dwidth/3.34,dheight/.97)
                            dcanvas.coords("adncombobill",dwidth/3.34,dheight/.9)

                            dcanvas.coords("adnlabelitem",dwidth/22,dheight/.77)
                            dcanvas.coords("adnhlineitem",dwidth/22,dheight/.8,dwidth/1.055,dheight/.8)
                            
                            
                            dcanvas.coords("ailabel2",dwidth/2.5,dheight/8.24)
                            dcanvas.coords("ailabel3",dwidth/22.80,dheight/1.90)
                            dcanvas.coords("ailabel4",dwidth/20.00,dheight/1.65)
                            dcanvas.coords("ailabel5",dwidth/20.00,dheight/1.37)
                            
                            dcanvas.coords("ailabel7",dwidth/21.66 ,dheight/1.12)
                            dcanvas.coords("ailabel8",dwidth/3.34,dheight/1.12)
                            
                            
                            dcanvas.coords("ailabel11",dwidth/16.50,dheight/0.638)
                            dcanvas.coords("ailabel12",dwidth/8.40,dheight/0.638)
                            dcanvas.coords("ailabel13",dwidth/3.34,dheight/0.638)
                            dcanvas.coords("ailabel14",dwidth/2.28,dheight/0.638)
                            dcanvas.coords("ailabel15",dwidth/1.73,dheight/0.638)
                            dcanvas.coords("ailabel16",dwidth/1.52,dheight/0.638)
                            dcanvas.coords("ailabel17",dwidth/1.325,dheight/0.638)
                            dcanvas.coords("ailabel18",dwidth/1.165,dheight/0.638)
                            dcanvas.coords("ailabel19",dwidth/16.50,dheight/0.604)
                            dcanvas.coords("ailabel20",dwidth/16.50,dheight/0.562)
                            dcanvas.coords("ailabel21",dwidth/16.50,dheight/0.526)
                            dcanvas.coords("ailabel22",dwidth/16.50,dheight/0.496)
                            dcanvas.coords("ailabel23",dwidth/1.53,dheight/0.45)
                            dcanvas.coords("ailabel24",dwidth/1.54,dheight/0.435)
                            dcanvas.coords("ailabel25",dwidth/1.54,dheight/0.42)
                            dcanvas.coords("ailabel26",dwidth/1.54,dheight/0.406)
                            dcanvas.coords("ailabel27",dwidth/1.54,dheight/0.392)
                            dcanvas.coords("ailabel28",dwidth/1.72,dheight/1.12)
                            

                            
                            
                            dcanvas.coords("aientry3",dwidth/4.00,dheight/0.604)
                            dcanvas.coords("aientry4",dwidth/2.51,dheight/0.604)
                            dcanvas.coords("aientry5",dwidth/1.8,dheight/0.604)
                            dcanvas.coords("aientry6",dwidth/1.565,dheight/0.604)
                            dcanvas.coords("aientry7",dwidth/1.357,dheight/0.604)
                            dcanvas.coords("aientry8",dwidth/4.00,dheight/0.562)
                            dcanvas.coords("aientry9",dwidth/4.00,dheight/0.526)
                            dcanvas.coords("aientry10",dwidth/4.00,dheight/0.496)
                            dcanvas.coords("aientry11",dwidth/2.51,dheight/0.562)
                            dcanvas.coords("aientry12",dwidth/2.51,dheight/0.526)
                            dcanvas.coords("aientry13",dwidth/2.51,dheight/0.496)
                            dcanvas.coords("aientry14",dwidth/1.8,dheight/0.562)
                            dcanvas.coords("aientry15",dwidth/1.8,dheight/0.526)
                            dcanvas.coords("aientry16",dwidth/1.8,dheight/0.496)
                            dcanvas.coords("aientry17",dwidth/1.565,dheight/0.562)
                            dcanvas.coords("aientry18",dwidth/1.565,dheight/0.526)
                            dcanvas.coords("aientry19",dwidth/1.565,dheight/0.496)
                            dcanvas.coords("aientry20",dwidth/1.357,dheight/0.562)
                            dcanvas.coords("aientry21",dwidth/1.357,dheight/0.526)
                            dcanvas.coords("aientry22",dwidth/1.357,dheight/0.496)
                            dcanvas.coords("aientry23",dwidth/1.33,dheight/0.452)
                            dcanvas.coords("aientry24",dwidth/1.33,dheight/0.4365)
                            dcanvas.coords("aientry25",dwidth/1.33,dheight/0.4215)
                            dcanvas.coords("aientry26",dwidth/1.33,dheight/0.407)
                            dcanvas.coords("aientry27",dwidth/1.33,dheight/0.393)
                            dcanvas.coords("aientry19",dwidth/18.00,dheight/1.295)
                            

                            dcanvas.coords("aicombo2",dwidth/3.00,dheight/1.074)
                            
                            dcanvas.coords("aicombo4",dwidth/10.10,dheight/0.604)
                            dcanvas.coords("aicombo5",dwidth/1.21,dheight/0.604)
                            dcanvas.coords("aicombo6",dwidth/10.10,dheight/0.562)
                            dcanvas.coords("aicombo7",dwidth/10.10,dheight/0.526)
                            dcanvas.coords("aicombo8",dwidth/10.10,dheight/0.496)
                            dcanvas.coords("aicombo9",dwidth/1.21,dheight/0.562)
                            dcanvas.coords("aicombo10",dwidth/1.21,dheight/0.526)
                            dcanvas.coords("aicombo11",dwidth/1.21,dheight/0.496)

                            
                            dcanvas.coords("aibutton2",dwidth/1.28,dheight/0.377)
                            dcanvas.coords("aibutton3",dwidth/23,dheight/3.415)

                            #-------------------------------H Lines-----------------------------------#
                            dcanvas.coords("ailine1",dwidth/21,dheight/0.645,dwidth/1.055,dheight/0.645)
                            dcanvas.coords("ailine2",dwidth/21,dheight/0.617,dwidth/1.055,dheight/0.617)
                            dcanvas.coords("ailine3",dwidth/21,dheight/0.576,dwidth/1.055,dheight/0.576)
                            dcanvas.coords("ailine4",dwidth/21,dheight/0.536,dwidth/1.055,dheight/0.536)
                            dcanvas.coords("ailine5",dwidth/21,dheight/0.506,dwidth/1.055,dheight/0.506)
                            dcanvas.coords("ailine6",dwidth/21,dheight/0.476,dwidth/1.055,dheight/0.476)
                            #-------------------------------V Lines-----------------------------------#
                            dcanvas.coords("ailine7",dwidth/21,dheight/0.645,dwidth/21,dheight/0.476)
                            dcanvas.coords("ailine8",dwidth/1.055,dheight/0.645,dwidth/1.055,dheight/0.476)
                            dcanvas.coords("ailine9",dwidth/11,dheight/0.645,dwidth/11,dheight/0.476)
                            dcanvas.coords("ailine10",dwidth/4.15,dheight/0.645,dwidth/4.15,dheight/0.476)
                            dcanvas.coords("ailine11",dwidth/2.55,dheight/0.645,dwidth/2.55,dheight/0.476)
                            dcanvas.coords("ailine12",dwidth/1.83,dheight/0.645,dwidth/1.83,dheight/0.476)
                            dcanvas.coords("ailine13",dwidth/1.58,dheight/0.645,dwidth/1.58,dheight/0.476)
                            dcanvas.coords("ailine14",dwidth/1.3,dheight/0.645,dwidth/1.3,dheight/0.476)
                            

                            #-------------------------------V Lines-----------------------------------#
                            dcanvas.coords("ailine16",dwidth/1.58,dheight/0.455,dwidth/1.58,dheight/0.41)
                            dcanvas.coords("ailine17",dwidth/1.348,dheight/0.455,dwidth/1.348,dheight/0.41)
                            dcanvas.coords("ailine18",dwidth/1.084,dheight/0.455,dwidth/1.084,dheight/0.41)
                            #-------------------------------H Lines-----------------------------------#
                            dcanvas.coords("ailine19",dwidth/1.58,dheight/0.455,dwidth/1.084,dheight/0.455)
                            
                            dcanvas.coords("ailine21",dwidth/1.58,dheight/0.439,dwidth/1.084,dheight/0.439)
                            dcanvas.coords("ailine22",dwidth/1.58,dheight/0.424,dwidth/1.084,dheight/0.424)
                            dcanvas.coords("ailine23",dwidth/1.58,dheight/0.41,dwidth/1.084,dheight/0.41)
                            


                        
                            
                        addDN_canvas = Canvas(addDN_frame,height=700,bg='#2f516f',scrollregion=(0,0,700,1800))

                        addDN_frame.grid_rowconfigure(0,weight=1)
                        addDN_frame.grid_columnconfigure(0,weight=1)

                        vertibar = Scrollbar(addDN_frame,orient=VERTICAL)
                        vertibar.grid(row=0,column=1,sticky='ns')
                        vertibar.config(command=addDN_canvas.yview)

                        addDN_canvas.bind("<Configure>", addDN_responsive_widgets)
                        addDN_canvas.config(yscrollcommand=vertibar.set)
                        addDN_canvas.grid(row=0,column=0,sticky='nsew')
                    #---------------------------------------------------------------------------Header
                        addDN_canvas.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("adnpoly1"))

                    #---------------------------------------------------------------------------Vendor page debit note
                        def add_VendorDN():
                            addDN_frame.grid_forget()
                            vendor_frame_1 = Frame(tab16_4)
                            vendor_frame_1.grid(row=0,column=0,sticky='nsew')

                            def vd_responsive_widgets_1(event):
                                dwidth = event.width
                                dheight = event.height
                                dcanvas = event.widget
                                
                                r1 = 25
                                x1 = dwidth/63
                                x2 = dwidth/1.021
                                y1 = dheight/14 
                                y2 = dheight/3.505

                                dcanvas.coords("acpoly1",x1 + r1,y1,
                                x1 + r1,y1,
                                x2 - r1,y1,
                                x2 - r1,y1,     
                                x2,y1,     
                                #--------------------
                                x2,y1 + r1,     
                                x2,y1 + r1,     
                                x2,y2 - r1,     
                                x2,y2 - r1,     
                                x2,y2,
                                #--------------------
                                x2 - r1,y2,     
                                x2 - r1,y2,     
                                x1 + r1,y2,
                                x1 + r1,y2,
                                x1,y2,
                                #--------------------
                                x1,y2 - r1,
                                x1,y2 - r1,
                                x1,y1 + r1,
                                x1,y1 + r1,
                                x1,y1,
                                )

                                dcanvas.coords("aclabel1",dwidth/2.5,dheight/8.24)
                                dcanvas.coords("achline",dwidth/21,dheight/4.67,dwidth/1.055,dheight/4.67)

                                r2 = 25
                                x11 = dwidth/63
                                x21 = dwidth/1.021
                                y11 = dheight/2.8
                                y21 = dheight/0.45


                                dcanvas.coords("acpoly2",x11 + r2,y11,
                                x11 + r2,y11,
                                x21 - r2,y11,
                                x21 - r2,y11,     
                                x21,y11,     
                                #--------------------
                                x21,y11 + r2,     
                                x21,y11 + r2,     
                                x21,y21 - r2,     
                                x21,y21 - r2,     
                                x21,y21,
                                #--------------------
                                x21 - r2,y21,     
                                x21 - r2,y21,     
                                x11 + r2,y21,
                                x11 + r2,y21,
                                x11,y21,
                                #--------------------
                                x11,y21 - r2,
                                x11,y21 - r2,
                                x11,y11 + r2,
                                x11,y11 + r2,
                                x11,y11,
                                )

                                dcanvas.coords("aclabel2",dwidth/17.0,dheight/2.35)
                                dcanvas.coords("achline1",dwidth/21,dheight/1.95,dwidth/1.055,dheight/1.95)
                                dcanvas.coords("aclabel3",dwidth/20.2,dheight/1.8)
                                dcanvas.coords("aclabel4",dwidth/3.35,dheight/1.8)
                                dcanvas.coords("aclabel5",dwidth/1.98,dheight/1.8)
                                dcanvas.coords("aclabel6",dwidth/1.33,dheight/1.8)
                                # dcanvas.coords("aclabel7",dwidth/3.375,dheight/0.92)
                                dcanvas.coords("aclabel8",dwidth/19.6,dheight/1.082)
                                dcanvas.coords("aclabel9",dwidth/2.85,dheight/1.082)
                                dcanvas.coords("aclabel10",dwidth/1.525,dheight/1.082)
                                dcanvas.coords("aclabel11",dwidth/18.7,dheight/1.46)
                                dcanvas.coords("aclabel12",dwidth/2.8,dheight/1.46)
                                dcanvas.coords("aclabel13",dwidth/1.525,dheight/1.46)
                                dcanvas.coords("aclabel14",dwidth/55.5,dheight/0.79)
                                dcanvas.coords("aclabel15",dwidth/2.09,dheight/0.79)
                                dcanvas.coords("aclabel16",dwidth/19.5,dheight/0.74)
                                dcanvas.coords("aclabel17",dwidth/1.97,dheight/0.74)
                                dcanvas.coords("aclabel18",dwidth/19.49,dheight/0.645)
                                dcanvas.coords("aclabel19",dwidth/3.40,dheight/0.645)
                                dcanvas.coords("aclabel20",dwidth/2.0,dheight/0.645)
                                dcanvas.coords("aclabel21",dwidth/1.33,dheight/0.645)
                                dcanvas.coords("aclabel22",dwidth/21.0,dheight/0.58)
                                dcanvas.coords("aclabel23",dwidth/3.42,dheight/0.58)
                                dcanvas.coords("aclabel24",dwidth/2.0,dheight/0.58)
                                dcanvas.coords("aclabel25",dwidth/1.34,dheight/0.58)
                                dcanvas.coords("aclabel26",dwidth/2.34,dheight/1.195)
                                dcanvas.coords("aclabel27",dwidth/2.92,dheight/0.965)
                                dcanvas.coords("aclabel28",dwidth/19.00,dheight/0.90)
                                dcanvas.coords("aclabel29",dwidth/3.92,dheight/0.90)
                                dcanvas.coords("aclabel30",dwidth/2.00,dheight/0.90)
                                dcanvas.coords("aclabel31",dwidth/1.35,dheight/0.90)
                                
                                


                                dcanvas.coords("accombo1",dwidth/18.5,dheight/1.68)
                                dcanvas.coords("accombo2",dwidth/18.5,dheight/1.027)
                                dcanvas.coords("accombo3",dwidth/18.5,dheight/0.85)
                                dcanvas.coords("accombo4",dwidth/1.35,dheight/0.85)

                                dcanvas.coords("acentry1",dwidth/3.30,dheight/1.68)
                                dcanvas.coords("acentry2",dwidth/1.97,dheight/1.68)
                                dcanvas.coords("acentry3",dwidth/1.33,dheight/1.68)
                                # dcanvas.coords("acentry4",dwidth/3.30,dheight/0.88)
                                dcanvas.coords("acentry5",dwidth/2.75,dheight/1.027)
                                dcanvas.coords("acentry6",dwidth/1.5,dheight/1.027)
                                dcanvas.coords("acentry7",dwidth/18.5,dheight/1.38)
                                dcanvas.coords("acentry8",dwidth/2.75,dheight/1.38)
                                dcanvas.coords("acentry9",dwidth/1.5,dheight/1.38)
                                dcanvas.coords("achline2",dwidth/21,dheight/1.25,dwidth/1.055,dheight/1.25)
                                dcanvas.coords("achline3",dwidth/21,dheight/1.1,dwidth/1.055,dheight/1.1)
                                dcanvas.coords("acentry10",dwidth/18.5,dheight/0.715)
                                dcanvas.coords("acentry11",dwidth/1.97,dheight/0.715)
                                dcanvas.coords("acentry12",dwidth/18.5,dheight/0.625)
                                dcanvas.coords("acentry13",dwidth/3.40,dheight/0.625)
                                dcanvas.coords("acentry14",dwidth/1.98,dheight/0.625)
                                dcanvas.coords("acentry15",dwidth/1.33,dheight/0.625)
                                dcanvas.coords("acentry16",dwidth/19.51,dheight/0.565)
                                dcanvas.coords("acentry17",dwidth/3.40,dheight/0.565)
                                dcanvas.coords("acentry18",dwidth/1.98,dheight/0.565)
                                dcanvas.coords("acentry19",dwidth/1.33,dheight/0.565)
                                dcanvas.coords("acentry20",dwidth/3.95,dheight/0.85)
                                dcanvas.coords("acentry21",dwidth/1.91,dheight/0.85)
                                

                                dcanvas.coords("accheck1",dwidth/1.55,dheight/0.79)
                                dcanvas.coords("accheck2",dwidth/19.0,dheight/0.546)

                                dcanvas.coords("acbutton1",dwidth/2.5,dheight/0.5)
                                dcanvas.coords("acbutton3",dwidth/23,dheight/3.415)
                                dcanvas.coords("acbutton2",dwidth/5.5,dheight/1)
                                dcanvas.coords("acbutton4",dwidth/2.3,dheight/0.85)
                                dcanvas.coords("acbutton5",dwidth/2.05,dheight/0.85)
                                dcanvas.coords("acbutton6",dwidth/1.086,dheight/0.85)
                                


                            vd_canvas_1=Canvas(vendor_frame_1, bg='#2f516f', width=953, height=600, scrollregion=(0,0,700,1600))

                            vendor_frame_1.grid_columnconfigure(0,weight=1)
                            vendor_frame_1.grid_rowconfigure(0,weight=1)

                            
                            vertibar=Scrollbar(vendor_frame_1, orient=VERTICAL)
                            vertibar.grid(row=0,column=1,sticky='ns')
                            vertibar.config(command=vd_canvas_1.yview)

                            vd_canvas_1.bind("<Configure>", vd_responsive_widgets_1)
                            vd_canvas_1.config(yscrollcommand=vertibar.set)
                            vd_canvas_1.grid(row=0,column=0,sticky='nsew')
                            
                            
                            vd_canvas_1.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("acpoly1"))

                            label_1 = Label(vd_canvas_1,width=15,height=1,text="ADD VENDORS", font=('arial 20'),background="#1b3857",fg="white") 
                            window_label_1 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_1, tags=("aclabel1"))

                            vd_canvas_1.create_line(0, 0, 0, 0, fill='gray',width=1, tags=("achline"))

                            vd_canvas_1.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("acpoly2"))

                            label_1 = Label(vd_canvas_1,width=20,height=1,text="Vendor Details", font=('arial 20'),background="#1b3857",fg="white") 
                            window_label_1 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_1, tags=("aclabel2"))

                            vd_canvas_1.create_line(0, 0, 0, 0, fill='gray',width=1, tags=("achline1"))
                            vd_canvas_1.create_line(0, 0, 0, 0, fill='gray',width=1, tags=("achline2"))
                            vd_canvas_1.create_line(0, 0, 0, 0, fill='gray',width=1, tags=("achline3"))

                            label_2 = Label(vd_canvas_1,width=5,height=1,text="Title", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel3"))

                            comb_cus_1 = ttk.Combobox(vd_canvas_1, font=('arial 10'))
                            comb_cus_1['values'] = ("Mr","Mrs","Miss","Ms",)
                            comb_cus_1.current(0)
                            window_comb_cus_1 = vd_canvas_1.create_window(0, 0, anchor="nw", width=245, height=30,window=comb_cus_1, tags=("accombo1"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="First name", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel4"))

                            entry_cus_f1=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_f1 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_f1, tags=("acentry1"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="Last name", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel5"))

                            entry_cus_l2=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_l2 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_l2, tags=("acentry2"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="Company", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel6"))

                            entry_cus_com3=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_com3 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_com3, tags=("acentry3"))

                            # label_2 = Label(vd_canvas_1,width=10,height=1,text="Location", font=('arial 12'),background="#1b3857",fg="white") 
                            # window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel7"))

                            # cus_loc4=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            # window_cus_loc4 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=cus_loc4, tags=("acentry4"))

                            label_2 = Label(vd_canvas_1,width=15,height=1,text="GST Treatment", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel8"))

                            comb_cus_g2 = ttk.Combobox(vd_canvas_1, font=('arial 10'))
                            comb_cus_g2['values'] = ("Choose...","Registered Business-Regular","Registered Business-Composition","Unregistered Business","Overseas","Special Economic Zone(SEZ)","Demed Exports","Tax Deductor","SEZ Developer")
                            comb_cus_g2.current(0)
                            window_comb_cus_g2 = vd_canvas_1.create_window(0, 0, anchor="nw", width=340, height=30,window=comb_cus_g2, tags=("accombo2"))

                            label_2 = Label(vd_canvas_1,width=15,height=1,text="Other Options", font=('arial 20'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel26"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="GSTIN", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel9"))

                            def gst_validate(value):
                
                                """
                                Validat the email entry
                                :param value:
                                :return:
                                """
                                pattern = r'\b[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}\b'
                                if re.fullmatch(pattern, value) is None:
                                    
                                    return False

                                entry_cus_gin5.config(fg="white")
                                return True

                            def gst_invalidate():
                                entry_cus_gin5.config(fg="red")

                            def ac_gst_in(event):
                                if entry_cus_gin5.get()=="29APPCK7465F1Z1":
                                    entry_cus_gin5.delete(0,END)
                                else:
                                    pass
                            
                            entry_cus_gin5=Entry(vd_canvas_1,width=50,justify=LEFT,background='#2f516f',font=('arial 10'))
                            val_gst = (vd_canvas_1.register(gst_validate), '%P')
                            ival_gst = (vd_canvas_1.register(gst_invalidate),)
                            entry_cus_gin5.config(validate='focusout', validatecommand=val_gst, invalidcommand=ival_gst)
                            window_entry_cus_gin5 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_gin5, tags=("acentry5"))
                            entry_cus_gin5.insert(0,"29APPCK7465F1Z1")
                            entry_cus_gin5.bind("<Button-1>",ac_gst_in)

                            #Define a callback function
                            def callback_1(url):
                                    webbrowser.open_new_tab(url)

                            label_link_2 = Label(vd_canvas_1,width=25,height=1,text="Get Taxpayer details?", font=('arial 12'),background="#1b3857",fg="skyblue") 
                            window_label_link_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_link_2, tags=("aclabel27"))
                            label_link_2.bind("<Button-1>", lambda e:callback_1("https://services.gst.gov.in/services/searchtp"))


                            label_2 = Label(vd_canvas_1,width=10,height=1,text="PAN NO", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel10"))

                            def ac_pan_no(event):
                                if entry_cus_pan6.get()=="APPCK7465F":
                                    entry_cus_pan6.delete(0,END)
                                else:
                                    pass

                            def pan_validate(value):
                
                                """
                                Validat the email entry
                                :param value:
                                :return:
                                """
                                pattern = r'\b[A-Za-z]{5}\d{4}[A-Za-z]{1}\b'
                                if re.fullmatch(pattern, value) is None:
                                    
                                    return False

                                entry_cus_pan6.config(fg="white")
                                return True

                            def pan_invalidate():
                                entry_cus_pan6.config(fg="red")

                            entry_cus_pan6=Entry(vd_canvas_1,width=50,justify=LEFT,background='#2f516f',font=('arial 10'))
                            val_pan = (vd_canvas_1.register(pan_validate), '%P')
                            ival_pan = (vd_canvas_1.register(pan_invalidate),)
                            entry_cus_pan6.config(validate='focusout', validatecommand=val_pan, invalidcommand=ival_pan)
                            window_entry_cus_pan6 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_pan6, tags=("acentry6"))
                            entry_cus_pan6.insert(0,"APPCK7465F")
                            entry_cus_pan6.bind("<Button-1>",ac_pan_no)
                            
                            
                            label_2 = Label(vd_canvas_1,width=15,height=1,text="Place of Supply", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel28"))
                            
                            comb_cus_1 = ttk.Combobox(vd_canvas_1, font=('arial 10'))
                            comb_cus_1['values'] = ("Choose...","[AD] Andhra Predhesh","[AN] Andaman and Nicobar Islads","[AR] Arunachal Predesh","[AS] Assam","[BR] Bihar","[CH] Chandigarh","[CG] Chhattisgarh","[DNH] Dadra and Nagar Haveli","[DD] Damn anad Diu","[DL] Delhi","[GA] Goa","[GJ] Gujarat","[HR] Haryana","[HP] Himachal Predesh","[JK] Jammu and Kashmir","[JH] Jharkhand","[KA] Karnataka","[KL] Kerala","[LA] Ladakh","[LD] Lakshadweep","[MP] Madhya Predesh","[MH] Maharashtra","[MN] Manipur","[ML] Meghalaya","[MZ] Mizoram","[NL] Nagaland","[OD] Odisha","[PY] Puducherry","[PB] Punjab","[RJ] Rajasthan","[SK] Sikkim","[TN] Tamil Nadu","[TS] Telangana","[TR] Tripura","[UP] Uttar Predesh","[UK] Uttarakhand","[WB] West Bengal","[OT] Other Territory")
                            comb_cus_1.current(0)
                            window_comb_cus_1 = vd_canvas_1.create_window(0, 0, anchor="nw", width=245, height=30,window=comb_cus_1, tags=("accombo3"))
                        
                            label_2 = Label(vd_canvas_1,width=14,height=1,text="Currency", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel29"))
                            entry_cus_f1=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_f1 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_f1, tags=("acentry20"))
                        
                            
                            def currency_create():
                                vendor_frame_1.grid_forget()
                                vendor_frame_2 = Frame(tab16_4)
                                vendor_frame_2.grid(row=0,column=0,sticky='nsew')

                                def vendor_responsive_widgets_2(event):

                                    dwidth = event.width
                                    dheight = event.height
                                    dcanvas = event.widget
                                    
                                    r1 = 25
                                    x1 = dwidth/63
                                    x2 = dwidth/1.021
                                    y1 = dheight/14 
                                    y2 = dheight/3.505

                                    dcanvas.coords("curpoly1",x1 + r1,y1,
                                    x1 + r1,y1,
                                    x2 - r1,y1,
                                    x2 - r1,y1,     
                                    x2,y1,     
                                    #--------------------
                                    x2,y1 + r1,     
                                    x2,y1 + r1,     
                                    x2,y2 - r1,     
                                    x2,y2 - r1,     
                                    x2,y2,
                                    #--------------------
                                    x2 - r1,y2,     
                                    x2 - r1,y2,     
                                    x1 + r1,y2,
                                    x1 + r1,y2,
                                    x1,y2,
                                    #--------------------
                                    x1,y2 - r1,
                                    x1,y2 - r1,
                                    x1,y1 + r1,
                                    x1,y1 + r1,
                                    x1,y1,
                                    )

                                    dcanvas.coords("curlabel1",dwidth/2.3,dheight/8.24)
                                    dcanvas.coords("curhline",dwidth/21,dheight/4.67,dwidth/1.055,dheight/4.67)

                                    r2 = 25
                                    x11 = dwidth/63
                                    x21 = dwidth/1.021
                                    y11 = dheight/2.8
                                    y21 = dheight/0.45


                                    dcanvas.coords("curpoly2",x11 + r2,y11,
                                    x11 + r2,y11,
                                    x21 - r2,y11,
                                    x21 - r2,y11,     
                                    x21,y11,     
                                    #--------------------
                                    x21,y11 + r2,     
                                    x21,y11 + r2,     
                                    x21,y21 - r2,     
                                    x21,y21 - r2,     
                                    x21,y21,
                                    #--------------------
                                    x21 - r2,y21,     
                                    x21 - r2,y21,     
                                    x11 + r2,y21,
                                    x11 + r2,y21,
                                    x11,y21,
                                    #--------------------
                                    x11,y21 - r2,
                                    x11,y21 - r2,
                                    x11,y11 + r2,
                                    x11,y11 + r2,
                                    x11,y11,
                                    )

                                    dcanvas.coords("curbutton1",dwidth/23,dheight/3.415)
                                    dcanvas.coords("curbutton2",dwidth/2.0,dheight/0.68)

                                    dcanvas.coords("curlabel2",dwidth/1.945,dheight/1.82)
                                    dcanvas.coords("curlabel3",dwidth/1.945,dheight/1.42)
                                    dcanvas.coords("curlabel4",dwidth/1.945,dheight/1.15)
                                    dcanvas.coords("curlabel5",dwidth/1.945,dheight/0.97)
                                    dcanvas.coords("curlabel6",dwidth/1.900,dheight/0.83)

                                    dcanvas.coords("curentry1",dwidth/3,dheight/1.66)
                                    dcanvas.coords("curentry2",dwidth/3,dheight/1.30)
                                    dcanvas.coords("curentry3",dwidth/3,dheight/1.07)
                                    dcanvas.coords("curentry4",dwidth/3,dheight/0.90)
                                    dcanvas.coords("curentry5",dwidth/3,dheight/0.78)

                                    
                                    dcanvas.coords("curcombo1",dwidth/3,dheight/1.66)

                                vendor_canvas_2=Canvas(vendor_frame_2, bg='#2f516f', width=953, height=600, scrollregion=(0,0,700,1800))

                                vendor_frame_2.grid_columnconfigure(0,weight=1)
                                vendor_frame_2.grid_rowconfigure(0,weight=1)
                                
                                vertibar=Scrollbar(vendor_frame_2, orient=VERTICAL)
                                vertibar.grid(row=0,column=1,sticky='ns')
                                vertibar.config(command=vendor_canvas_2.yview)

                                vendor_canvas_2.bind("<Configure>", vendor_responsive_widgets_2)
                                vendor_canvas_2.config(yscrollcommand=vertibar.set)
                                vendor_canvas_2.grid(row=0,column=0,sticky='nsew')
                                
                                
                                        

                                vendor_canvas_2.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("curpoly1"))

                                label_1 = Label(vendor_canvas_2,width=23,height=1,text="ADD CURRENCY", font=('arial 20'),background="#1b3857",fg="white",anchor="w") 
                                window_label_1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=label_1, tags=("curlabel1"))

                                vendor_canvas_2.create_line(0, 0, 0, 0, fill='gray',width=1, tags=("curhline"))

                                vendor_canvas_2.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("curpoly2"))
                                
                                
                                
                                label_1 = Label(vendor_canvas_2,width=13,height=1,text="Currency code ", font=('arial 12'),background="#1b3857",fg="white", anchor="w") 
                                window_label_1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=label_1, tags=('curlabel2'))
                                
                                comb_cus_2 = ttk.Combobox(vendor_canvas_2, font=('arial 10'))
                                comb_cus_2['values'] = ("select currency","Afghan Afghani","Albanian Lek","Algerian Dinar","Angolan Kwanza","Argentine Peso","Armenian Dram","Aruban Florin","Australian Dollar","Azerbaijani Manat","Bahamian Dollar","Bahraini Dinar","Bangladeshi Taka","Barbadian Dollar","Belarusian Ruble","Belgian Franc","Belize Dollar","Bermudan Dollar","Bhutanese Ngultrum","Bitcoin","Bolivian Boliviano","Bosnia-Herzegovina Convertible Mark","Botswanan Pula","Brazilian Real","British Pound Sterling","Brunei Dollar","Bulgarian Lev","Burundian Franc","Cambodian Riel","Canadian Dollar","Cape Verdean Escudo","Cayman Islands Dollar","CFA Franc BCEAO","CFA Franc BEAC","CFP Franc","Chilean Peso","Chinese Yuan","Colombian Peso","Comorian Franc","Congolese Franc","Costa Rican ColÃ³n","Croatian Kuna","Cuban Convertible Peso","Czech Republic Koruna","Danish Krone","Djiboutian Franc","Dominican Peso","East Caribbean Dollar","Egyptian Pound","Eritrean Nakfa","Estonian Kroon","Ethiopian Birr","Euro","Falkland Islands Pound","Fijian Dollar","Gambian Dalasi","Georgian Lari","German Mark","Ghanaian Cedi","Gibraltar Pound","Greek Drachma","Guatemalan Quetzal","Guinean Franc","Guyanaese Dollar","Haitian Gourde","Honduran Lempira","Hong Kong Dollar","Hungarian Forint","Icelandic KrÃ³na","Indian Rupee","Indonesian Rupiah","Iraqi Dinar","Italian Lira","Japanese Yen","Jordanian Dinar","Kazakhstani Tenge","Kenyan Shilling","Kuwaiti Dinar","Kyrgystani Som","Latvian Lats","Lebanese Pound","Liberian Dollar","Lithuanian Litas","Macanese Pataca","Macedonian Denar","Malagasy Ariary","Malawian Kwacha","Malaysian Ringgit","Maldivian Rufiyaa","Mauritian Rupee","Moldovan Leu","Mongolian Tugrik","Moroccan Dirham","Mozambican Metical","Namibian Dollar","New Taiwan Dollar","Nigerian Naira","North Korean Won","Norwegian Krone","Pakistani Rupee","Panamanian Balboa","Papua New Guinean Kina","Paraguayan Guarani","Peruvian Nuevo Sol","Philippine Peso","Qatari Rial","Romanian Leu","Russian Ruble","Rwandan Franc","Salvadoran ColÃ³n","Samoan Tala","Saudi Riyal","Serbian Dinar","Seychellois Rupee","Sierra Leonean Leone","Singapore Dollar","Slovak Koruna","Solomon Islands Dollar","Somali Shilling","South African Rand","South Korean Won","Special Drawing Rights","Sri Lankan Rupee","St. Helena Pound","Sudanese Pound","Surinamese Dollar","Swazi Lilangeni","Swedish Krona","Swiss Franc","Syrian Pound","São Tomé and Príncipe Dobra","Tajikistani Somoni","Tanzanian Shilling","Thai Baht","Tongan pa'anga","Trinidad & Tobago Dollar","Tunisian Dinar","Turkmenistani Manat","Ugandan Shilling","Ukrainian Hryvnia","United Arab Emirates Dirham","Uruguayan Peso","US Dollar","Uzbekistan Som","Vanuatu Vatu","Venezuelan BolÃ­var","Vietnamese Dong","Yemeni Rial","Zambian Kwacha")
                                comb_cus_2.current(0)
                                window_comb_cus_2 = vendor_canvas_2.create_window(0, 0, anchor="nw", width=550, height=30,window=comb_cus_2, tags=("curcombo1"))

                                
                                
                                label_1 = Label(vendor_canvas_2,width=13,height=1,text="Currency symbol", font=('arial 12'),background="#1b3857",fg="white", anchor="w") 
                                window_label_1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=label_1, tags=('curlabel3'))

                                cur_entry_2=Entry(vendor_canvas_2,width=90,justify=LEFT,background='#2f516f',foreground="white")
                                window_cur_entry_2 = vendor_canvas_2.create_window(0, 0, anchor="nw", height=30,window=cur_entry_2, tags=('curentry2'))
                                
                                label_1 = Label(vendor_canvas_2,width=13,height=1,text="Currency Name", font=('arial 12'),background="#1b3857",fg="white", anchor="w") 
                                window_label_1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=label_1, tags=('curlabel4'))

                                cur_entry_2=Entry(vendor_canvas_2,width=90,justify=LEFT,background='#2f516f',foreground="white")
                                window_cur_entry_2 = vendor_canvas_2.create_window(0, 0, anchor="nw", height=30,window=cur_entry_2, tags=('curentry3'))
                                
                                label_1 = Label(vendor_canvas_2,width=13,height=1,text="Decimal places", font=('arial 12'),background="#1b3857",fg="white", anchor="w") 
                                window_label_1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=label_1, tags=('curlabel5'))

                                cur_entry_2=Entry(vendor_canvas_2,width=90,justify=LEFT,background='#2f516f',foreground="white")
                                window_cur_entry_2 = vendor_canvas_2.create_window(0, 0, anchor="nw", height=30,window=cur_entry_2, tags=('curentry4'))
                                
                                label_1 = Label(vendor_canvas_2,width=13,height=1,text="Format", font=('arial 12'),background="#1b3857",fg="white", anchor="w") 
                                window_label_1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=label_1, tags=('curlabel6'))

                                cur_entry_2=Entry(vendor_canvas_2,width=90,justify=LEFT,background='#2f516f',foreground="white")
                                window_cur_entry_2 = vendor_canvas_2.create_window(0, 0, anchor="nw", height=30,window=cur_entry_2, tags=('curentry5'))
                                

                                cur_save_btn1=Button(vendor_canvas_2,text='Create', width=15,height=2,foreground="white",background="#1b3857",font='arial 12')
                                window_cur_save_btn1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=cur_save_btn1,tags=('curbutton2'))

                                def uvendor_back_1_():
                                    vendor_frame_2.grid_forget()
                                    vendor_frame_1.grid(row=0,column=0,sticky='nsew')

                                cur_bck_btn1=Button(vendor_canvas_2,text='← Back', bd=0, foreground="white",background="#2f516f",font='arial 10 bold',activebackground="#1b3857",command=uvendor_back_1_)
                                window_cur_bck_btn1 = vendor_canvas_2.create_window(0, 0, anchor="nw", window=cur_bck_btn1,tags=('curbutton1'))
                            
                            cus_btn3=Button(vd_canvas_1,text='+', width=4,height=1,foreground="white",background="#1b3857",font='arial 12',command=currency_create)
                            window_cus_btn3 = vd_canvas_1.create_window(0, 0, anchor="nw", window=cus_btn3,tags=("acbutton4"))
                            
                            cus_btn4=Button(vd_canvas_1,text='INR', width=4,height=1,foreground="white",background="#1b3857",font='arial 12')
                            window_cus_btn4 = vd_canvas_1.create_window(0, 0, anchor="nw", window=cus_btn4,tags=("acbutton5"))
                            
                            label_2 = Label(vd_canvas_1,width=13,height=1,text="Opening Balance", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel30"))
                            entry_cus_f1=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_f1 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_f1, tags=("acentry21"))
                            
                            label_2 = Label(vd_canvas_1,width=12,height=1,text="Payment Terms", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel31"))
                            comb_cus_1 = ttk.Combobox(vd_canvas_1, font=('arial 10'))
                            comb_cus_1['values'] = ("choose")
                            comb_cus_1.current(0)
                            window_comb_cus_1 = vd_canvas_1.create_window(0, 0, anchor="nw", width=240, height=30,window=comb_cus_1, tags=("accombo4"))
                            
                    
                            
                            def pay_create():
                                vendor_frame_1.grid_forget()
                                vendor_frame_3 = Frame(tab16_4)
                                vendor_frame_3.grid(row=0,column=0,sticky='nsew')

                                def vendor_responsive_widgets_3(event):

                                    dwidth = event.width
                                    dheight = event.height
                                    dcanvas = event.widget
                                    
                                    r1 = 25
                                    x1 = dwidth/63
                                    x2 = dwidth/1.021
                                    y1 = dheight/14 
                                    y2 = dheight/3.505

                                    dcanvas.coords("paypoly1",x1 + r1,y1,
                                    x1 + r1,y1,
                                    x2 - r1,y1,
                                    x2 - r1,y1,     
                                    x2,y1,     
                                    #--------------------
                                    x2,y1 + r1,     
                                    x2,y1 + r1,     
                                    x2,y2 - r1,     
                                    x2,y2 - r1,     
                                    x2,y2,
                                    #--------------------
                                    x2 - r1,y2,     
                                    x2 - r1,y2,     
                                    x1 + r1,y2,
                                    x1 + r1,y2,
                                    x1,y2,
                                    #--------------------
                                    x1,y2 - r1,
                                    x1,y2 - r1,
                                    x1,y1 + r1,
                                    x1,y1 + r1,
                                    x1,y1,
                                    )

                                    dcanvas.coords("paylabel1",dwidth/2.3,dheight/8.24)
                                    dcanvas.coords("payhline",dwidth/21,dheight/4.67,dwidth/1.055,dheight/4.67)

                                    r2 = 25
                                    x11 = dwidth/63
                                    x21 = dwidth/1.021
                                    y11 = dheight/2.8
                                    y21 = dheight/1.1



                                    dcanvas.coords("paypoly2",x11 + r2,y11,
                                    x11 + r2,y11,
                                    x21 - r2,y11,
                                    x21 - r2,y11,     
                                    x21,y11,     
                                    #--------------------
                                    x21,y11 + r2,     
                                    x21,y11 + r2,     
                                    x21,y21 - r2,     
                                    x21,y21 - r2,     
                                    x21,y21,
                                    #--------------------
                                    x21 - r2,y21,     
                                    x21 - r2,y21,     
                                    x11 + r2,y21,
                                    x11 + r2,y21,
                                    x11,y21,
                                    #--------------------
                                    x11,y21 - r2,
                                    x11,y21 - r2,
                                    x11,y11 + r2,
                                    x11,y11 + r2,
                                    x11,y11,
                                    )

                                    dcanvas.coords("paybutton1",dwidth/23,dheight/3.415)
                                    dcanvas.coords("paybutton2",dwidth/2.3,dheight/1.3)

                                    dcanvas.coords("paylabel1",dwidth/2.70,dheight/7)
                                    dcanvas.coords("paylabel2",dwidth/2.2,dheight/2)
                                    

                                    dcanvas.coords("payentry1",dwidth/3.5,dheight/1.66)
                                    


                                vendor_canvas_3=Canvas(vendor_frame_3, bg='#2f516f', width=953, height=600, scrollregion=(0,0,700,1800))

                                vendor_frame_3.grid_columnconfigure(0,weight=1)
                                vendor_frame_3.grid_rowconfigure(0,weight=1)
                                
                                vertibar=Scrollbar(vendor_frame_3, orient=VERTICAL)
                                vertibar.grid(row=0,column=1,sticky='ns')
                                vertibar.config(command=vendor_canvas_3.yview)

                                vendor_canvas_3.bind("<Configure>", vendor_responsive_widgets_3)
                                vendor_canvas_3.config(yscrollcommand=vertibar.set)
                                vendor_canvas_3.grid(row=0,column=0,sticky='nsew')
                                
                                
                                        

                                vendor_canvas_3.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("paypoly1"))

                                label_1 = Label(vendor_canvas_3,width=23,height=1,text="NEW PAYMENT TERMS", font=('arial 20'),background="#1b3857",fg="white",anchor="w") 
                                window_label_1 = vendor_canvas_3.create_window(0, 0, anchor="nw", window=label_1, tags=("paylabel1"))

                                vendor_canvas_3.create_line(0, 0, 0, 0, fill='gray',width=1, tags=("payhline"))

                                vendor_canvas_3.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("paypoly2"))
                                
                                
                                label_1 = Label(vendor_canvas_3,width=13,height=1,text="payment terms", font=('arial 12'),background="#1b3857",fg="white", anchor="w") 
                                window_label_1 = vendor_canvas_3.create_window(0, 0, anchor="nw", window=label_1, tags=('paylabel2'))

                                pay_entry_2=Entry(vendor_canvas_3,width=90,justify=LEFT,background='#2f516f',foreground="white")
                                window_pay_entry_2 = vendor_canvas_3.create_window(0, 0, anchor="nw", height=30,window=pay_entry_2, tags=('payentry1'))
                                
                            
                                pay_save_btn1=Button(vendor_canvas_3,text='SAVE', width=15,height=2,foreground="white",background="#1b3857",font='arial 12')
                                window_pay_save_btn1 = vendor_canvas_3.create_window(0, 0, anchor="nw", window=pay_save_btn1,tags=('paybutton2'))

                                def payvendor_back_1_():
                                    vendor_frame_3.grid_forget()
                                    vendor_frame_1.grid(row=0,column=0,sticky='nsew')

                                pay_bck_btn1=Button(vendor_canvas_3,text='← Back', bd=0, foreground="white",background="#2f516f",font='arial 10 bold',activebackground="#1b3857",command=payvendor_back_1_)
                                window_pay_bck_btn1 = vendor_canvas_3.create_window(0, 0, anchor="nw", window=pay_bck_btn1,tags=('paybutton1'))
                                
                                
                            cus_btn5=Button(vd_canvas_1,text='+', width=3,height=1,foreground="white",background="#1b3857",font='arial 12',command=pay_create)
                            window_cus_btn5 = vd_canvas_1.create_window(0, 0, anchor="nw", window=cus_btn5,tags=("acbutton6"))
                            
                            
                            label_2 = Label(vd_canvas_1,width=5,height=1,text="Email", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel11"))

                            def email_validate(value):
                
                                """
                                Validat the email entry
                                :param value:
                                :return:
                                """
                                pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'
                                if re.fullmatch(pattern, value) is None:
                                    
                                    return False

                                entry_cus_em7.config(fg="white")
                                return True

                            def email_invalidate():
                                entry_cus_em7.config(fg="red")

                            entry_cus_em7=Entry(vd_canvas_1,width=60,justify=LEFT,background='#2f516f')
                            val_email = (vd_canvas_1.register(email_validate), '%P')
                            ival_email = (vd_canvas_1.register(email_invalidate),)
                            entry_cus_em7.config(validate='focusout', validatecommand=val_email, invalidcommand=ival_email)
                            window_entry_cus_em7 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_em7, tags=("acentry7"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="Website", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel12"))

                            entry_cus_web8=Entry(vd_canvas_1,width=60,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_web8 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_web8, tags=("acentry8"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="Mobile", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel13"))

                            def imobile_validate(value):
                
                                """
                                Validat the email entry
                                :param value:
                                :return:
                                """
                                pattern = r'\b[0-9]{10}\b'
                                if re.fullmatch(pattern, value) is None:
                                    
                                    return False

                                entry_cus_mob9.config(fg="white")
                                return True

                            def imobile_invalidate():
                                entry_cus_mob9.config(fg="red")

                            entry_cus_mob9=Entry(vd_canvas_1,width=60,justify=LEFT,background='#2f516f',foreground="white")
                            ival_mobile = (vd_canvas_1.register(imobile_validate), '%P')
                            iival_mobile = (vd_canvas_1.register(imobile_invalidate),)
                            entry_cus_mob9.config(validate='focusout', validatecommand=ival_mobile, invalidcommand=iival_mobile)
                            window_entry_cus_mob9 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_mob9, tags=("acentry9"))
                            

                            def copy_vendor_details():
                                entry_cus_11.delete(0, END)
                                entry_cus_11.insert(0,entry_cus_10.get())
                                entry_cus_14.delete(0, END)
                                entry_cus_14.insert(0,entry_cus_12.get())
                                entry_cus_15.delete(0, END)
                                entry_cus_15.insert(0,entry_cus_13.get())
                                entry_cus_pin.delete(0, END)
                                entry_cus_pin.insert(0,entry_cus_p12.get())
                                entry_cus_c15.delete(0, END)
                                entry_cus_c15.insert(0,entry_cus_c13.get())

                            label_1 = Label(vd_canvas_1,width=20,height=1,text="Billing Address", font=('arial 16'),background="#1b3857",fg="white") 
                            window_label_1 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_1, tags=("aclabel14"))

                            label_2 = Label(vd_canvas_1,width=5,height=1,text="Street", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel16"))

                            entry_cus_10=Entry(vd_canvas_1,width=95,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_10 = vd_canvas_1.create_window(0, 0, anchor="nw", height=60,window=entry_cus_10, tags=("acentry10"))

                            label_1 = Label(vd_canvas_1,width=20,height=1,text="Shipping Address", font=('arial 16'),background="#1b3857",fg="white") 
                            window_label_1 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_1, tags=("aclabel15"))

                            label_2 = Label(vd_canvas_1,width=5,height=1,text="Street", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel17"))

                            entry_cus_11=Entry(vd_canvas_1,width=95,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_11 = vd_canvas_1.create_window(0, 0, anchor="nw", height=60,window=entry_cus_11, tags=("acentry11"))

                            label_2 = Label(vd_canvas_1,width=5,height=1,text="City", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel18"))

                            entry_cus_12=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_12 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_12, tags=("acentry12"))
                            
                            label_2 = Label(vd_canvas_1,width=5,height=1,text="State", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel19"))

                            entry_cus_13=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_13 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_13, tags=("acentry13"))

                            label_2 = Label(vd_canvas_1,width=5,height=1,text="City", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2,tags=("aclabel20"))

                            entry_cus_14=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_14 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_14, tags=("acentry14"))

                            label_2 = Label(vd_canvas_1,width=5,height=1,text="State", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2,tags=("aclabel21"))

                            entry_cus_15=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_15 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_15, tags=("acentry15"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="Pin Code", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel22"))

                            entry_cus_p12=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_p12 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_p12, tags=("acentry16"))
                            
                            label_2 = Label(vd_canvas_1,width=8,height=1,text="Country", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel23"))

                            entry_cus_c13=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_c13 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_c13, tags=("acentry17"))

                            label_2 = Label(vd_canvas_1,width=10,height=1,text="Pin Code", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel24"))

                            entry_cus_pin=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_pin = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_pin, tags=("acentry18"))

                            label_2 = Label(vd_canvas_1,width=8,height=1,text="Country", font=('arial 12'),background="#1b3857",fg="white") 
                            window_label_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=label_2, tags=("aclabel25"))

                            entry_cus_c15=Entry(vd_canvas_1,width=40,justify=LEFT,background='#2f516f',foreground="white")
                            window_entry_cus_c15 = vd_canvas_1.create_window(0, 0, anchor="nw", height=30,window=entry_cus_c15, tags=("acentry19"))

                            chk_str = StringVar()
                            chkbtn1 = Checkbutton(vd_canvas_1, text = "Same As Billing Address", variable = chk_str, onvalue = 1, offvalue = 0, font=("arial", 10),background="#1b3857",foreground="white",selectcolor="#2f516f",command=copy_vendor_details)
                            chkbtn1.select()
                            window_chkbtn_1 = vd_canvas_1.create_window(0, 0, anchor="nw", window=chkbtn1, tags=("accheck1"))

                            chk_str_1 = BooleanVar()
                            chkbtn2 = Checkbutton(vd_canvas_1, text = "Agree to terms and conditions", variable = chk_str_1, font=("arial", 10),background="#1b3857",foreground="white",selectcolor="#2f516f")
                            window_chkbtn_2 = vd_canvas_1.create_window(0, 0, anchor="nw", window=chkbtn2,tags=("accheck2"))

                            def vdn_back_1_():
                                    vendor_frame_1.grid_forget()
                                    addDN_frame.grid(row=0,column=0,sticky='nsew')

                            vdn_bck_btn1=Button(vd_canvas_1,text='← Back', bd=0, foreground="white",background="#2f516f",font='arial 10 bold',activebackground="#1b3857",command=vdn_back_1_)
                            window_vdn_bck_btn1 = vd_canvas_1.create_window(0, 0, anchor="nw", window=vdn_bck_btn1,tags=('vdnbutton1'))
                        

                        label_1 = Label(addDN_canvas,width=50,height=1,text="ADD DEBIT NOTE", font=('arial 25'),background="#1b3857",fg="white") 
                        window_label_1 = addDN_canvas.create_window(0, 0, anchor="c", window=label_1, tags=("adnlabel1"))

                        addDN_canvas.create_line(0,0,0,0,fill='gray',width=1,tags=("adnhline"))

                        addDN_canvas.create_polygon(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,smooth=True,fill="#1b3857",tags=("adnpoly2"))

                        label_2 = Label(addDN_canvas,width=15,height=1,text="Vendor", font=('arial 12'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_2, tags=("adnlabel3"))
                        comb_cus_1 = ttk.Combobox(addDN_canvas, font=('arial 10'))
                        vendr_sql = "SELECT id FROM auth_user WHERE username=%s"
                        vendr_val = (nm_ent.get(),)
                        fbcursor.execute(vendr_sql,vendr_val)
                        vndr_data = fbcursor.fetchone()
                        cmpv_sql = "SELECT cid FROM app1_company WHERE id_id=%s"
                        cmpv_val = (vndr_data[0],)
                        fbcursor.execute(cmpv_sql,cmpv_val)
                        cmpv_data = fbcursor.fetchone()
                        cid_id = cmpv_data[0] 
                        fbcursor.execute('SELECT * FROM `app1_vendor` where cid_id=%s',[cid_id])
                        prstreedata=fbcursor.fetchall()
                        my_list = []
                        for i in prstreedata:
                            if True:
                                n = i[1]+" "+i[2]
                            else:
                                pass
                            my_list.append(n)
                        comb_cus_1['values'] = my_list
                        comb_cus_1.current(0)
                        window_comb_cus_1 = addDN_canvas.create_window(0, 0, anchor="nw", width=245, height=30,window=comb_cus_1, tags=("adncombo1"))

                        aibtn2=Button(addDN_canvas,text='+', width=3,height=1,foreground="white",background="#1b3857",font='arial 12',command=add_VendorDN)
                        window_aibtn2 = addDN_canvas.create_window(0, 0, anchor="nw", window=aibtn2, tags=('aibutton1'))

                        label_2 = Label(addDN_canvas,width=15,height=1,text="Email", font=('arial 12'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_2,tags=('ailabel6'))

                        eaientry_1=Entry(addDN_canvas,width=40,justify=LEFT,background='#2f516f',foreground="white")
                        window_eaientry_1 = addDN_canvas.create_window(0, 0, anchor="nw", height=30,window=eaientry_1,tags=('aientry1'))

                        label_2 = Label(addDN_canvas,width=15,height=1,text="Billing address", font=('arial 12'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0,0, anchor="nw", window=label_2,tags=('ailabel9'))

                        
                        eai_b_entry_1=scrolledtext.ScrolledText(addDN_canvas,width=30,background='#2f516f',foreground="white")
                        window_eai_b_entry_1 = addDN_canvas.create_window(0, 0, anchor="nw", height=150, window=eai_b_entry_1,tags=('aientry2'))

                        # pre1label_45 = Label(addDN_canvas,width=6,height=1,text="Joining Date", font=('arial 12'),background="#1b3857",fg="white") 
                        # addDN_canvas.create_window(0,0,anchor="nw",window=pre1label_45,tags=("adnlabel19"))
                        # pre1entry45= DateEntry(addDN_canvas,width=40,justify=LEFT,background='#2f516f',foreground='white')
                        # window_pre1entry45 = addDN_canvas.create_window(0,0,anchor='nw',window=pre1entry45,tags=("adnentry2"),height=33)

                        label_2 = Label(addDN_canvas,width=15,height=1,text="Debit Note Date", font=('arial 12'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_2,tags=('ailabel29'))



                        label_2 = Label(addDN_canvas,width=12,height=1,text="Place of supply", font=('arial 12'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_2,tags=('ailabel10'))

                        eai_p_comb_2 = ttk.Combobox(addDN_canvas, font=('arial 10'))
                        eai_p_comb_2['values'] = ("Kerala","Andaman and Nicobar Islands","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh","Chhattisgarh","Dadra and Nagar Haveli","Daman and Diu","Delhi","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Ladakh","Lakshadweep","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttarakhand","West Bengal","Other Territory",)
                        window_eai_p_comb_2 = addDN_canvas.create_window(0, 0, anchor="nw", width=251, height=30,window=eai_p_comb_2,tags=('aicombo3'))

                        label_2 = Label(addDN_canvas,width=12,height=1,text="Bill Number", font=('arial 12'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_2,tags=('adnlabelbill'))

                        eai_p_comb_3 = ttk.Combobox(addDN_canvas, font=('arial 10'))
                        eai_p_comb_3['values'] = ("1001","1002","1003","1004",)
                        window_eai_p_comb_3 = addDN_canvas.create_window(0, 0, anchor="nw", width=251, height=30,window=eai_p_comb_3,tags=('adncombobill'))

                        addDN_canvas.create_line(0,0,0,0,fill='gray',width=1,tags=("adnhlineitem"))

                        label_x = Label(addDN_canvas,width=30,height=1,text="Item Details", font=('arial 18'),background="#1b3857",fg="white") 
                        window_label_x = addDN_canvas.create_window(0, 0, anchor="nw", window=label_x, tags=("adnlabelitem"))

                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine1'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine2'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine3'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine4'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine5'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine6'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine7'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine8'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine9'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine10'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine11'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine12'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine13'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine14'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine15'))


                        label_2 = Label(addDN_canvas,width=2,height=1,text="#", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_2 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_2,tags=('ailabel11'))

                        label_3 = Label(addDN_canvas,width=15,height=1,text="Item", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_3 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_3,tags=('ailabel12'))

                        label_4 = Label(addDN_canvas,width=4,height=1,text="HSN", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_4 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_4,tags=('ailabel13'))

                        label_4 = Label(addDN_canvas,width=11,height=1,text="Quantity", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_4 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_4,tags=('ailabel14'))

                        label_4 = Label(addDN_canvas,width=4,height=1,text="Price", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_4 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_4,tags=('ailabel15'))

                        label_4 = Label(addDN_canvas,width=8,height=1,text="Total", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_4 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_4,tags=('ailabel16'))

                        label_4 = Label(addDN_canvas,width=7,height=1,text="TAX (%)", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_4 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_4,tags=('ailabel18'))


                        
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine16'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine17'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine18'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine19'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine20'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine21'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine22'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine23'))
                        addDN_canvas.create_line(0, 0, 0, 0, fill='gray',width=1, tags=('ailine24'))
                        

                        label_5 = Label(addDN_canvas,width=10,height=1,text="Sub Total", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_5 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_5,tags=('ailabel23'))

                        label_5 = Label(addDN_canvas,width=12,height=1,text="Tax Amount", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_5 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_5,tags=('ailabel24'))

                        label_5 = Label(addDN_canvas,width=12,height=1,text="Grand Total", font=('arial 10'),background="#1b3857",fg="white") 
                        window_label_5 = addDN_canvas.create_window(0, 0, anchor="nw", window=label_5,tags=('ailabel25'))


                        esub_str=StringVar()
                        esub_entry_1=Entry(addDN_canvas,width=36,justify=LEFT,background='#2f516f',foreground="white",textvariable=esub_str)
                        window_esub_entry_1 = addDN_canvas.create_window(0, 0, anchor="nw", height=30, window=esub_entry_1,tags=('aientry23'))
                        

                        etax_str=StringVar()
                        etax_entry_1=Entry(addDN_canvas,width=36,justify=LEFT,background='#2f516f',foreground="white",textvariable=etax_str)
                        window_etax_entry_1 = addDN_canvas.create_window(0, 0, anchor="nw", height=30, window=etax_entry_1,tags=('aientry24'))
                        

                        egrd_str=StringVar()
                        egrand_entry_1=Entry(addDN_canvas,width=36,justify=LEFT,background='#2f516f',foreground="white",textvariable=egrd_str)
                        window_egrand_entry_1 = addDN_canvas.create_window(0, 0, anchor="nw", height=30, window=egrand_entry_1,tags=('aientry25'))
                                                

                        eai_save_btn1=Button(addDN_canvas,text='Save', width=15,height=2,foreground="white",background="#1b3857",font='arial 12',command=add_DN)
                        window_eai_save_btn1 = addDN_canvas.create_window(0, 0, anchor="nw", window=eai_save_btn1,tags=('aibutton2'))


                        

                        
                        def adn_back_1_():
                                addDN_frame.grid_forget()
                                main_frame_debitNote.grid(row=0,column=0,sticky='nsew')

                        adn_bck_btn1=Button(addDN_canvas,text='← Back', bd=0, foreground="white",background="#2f516f",font='arial 10 bold',activebackground="#1b3857",command=adn_back_1_)
                        window_adn_bck_btn1 = addDN_canvas.create_window(0, 0, anchor="nw", window=adn_bck_btn1,tags=('adnbutton1'))
                    
                    btn1=Button(debitNote_canvas,text='New', width=20,height=2,foreground="white",background="#1b3857",font='arial 12',command=add_DN)
                    window_btn1 = debitNote_canvas.create_window(0, 0, anchor="nw", window=btn1, tags=("vnbutton2"))
                    


                    
                    search_entry=Entry(debitNote_canvas,width=50,justify=LEFT,background='#2f516f',foreground="white")
                    window_search_entry = debitNote_canvas.create_window(0, 0, anchor="nw", height=45,window=search_entry, tags=('seacrhentry3'))

                    def searchitem():
                        searchkey = search_entry.get()
                        print(searchkey)

                        sql_pr="select * from auth_user where username=%s"
                        sql_pr_val=(nm_ent.get(),)
                        fbcursor.execute(sql_pr,sql_pr_val,)
                        pr_dtl=fbcursor.fetchone()

                        c_sql_1 = "SELECT * FROM app1_debitnote where usr_id=%s"
                        c_val_1 = (dn_dtl[0],)
                        fbcursor.execute(c_sql_1,c_val_1,)
                        s_data_1 = fbcursor.fetchall()

                        for i in debitNote_tree.get_children():
                            debitNote_tree.delete(i)

                        count0 = 0
                        for i in s_data_1:
                            if True:
                                whole = i[1]+i[2]+i[5]+i[11]+i[13]
                                if searchkey in whole:
                                    debitNote_tree.insert(parent='',index='end',iid=i,text='',values=(i[5],i[1],i[2],i[13],i[11]))  

                                
                            else:
                                pass
                        count0 += 1





                    searchbtn=Button(debitNote_canvas,text='Search', width=8,height=2,foreground="white",background="#1b3857",font='arial 12',command=searchitem)
                    window_searchbtn = debitNote_canvas.create_window(0, 0, anchor="nw", window=searchbtn, tags=("searchbutton2"))

                    def action_debitNote(event):
                        if debitnote_comb_1.get( )=="Delete":
                            DN_del = messagebox.askyesno("Delete Debit Note","Are you sure to delete this Debit Note?")

                        if DN_del == True:
                            DN_id_1 = debitNote_tree.item(debitNote_tree.focus())["values"][1]

                            sql_dn="select * from auth_user where username=%s"
                            sql_dn_val=(nm_ent.get(),)
                            fbcursor.execute(sql_dn,sql_dn_val,)
                            dn_dtl=fbcursor.fetchone()


                            c_sql_1 = "DELETE from app1_debitnote where usr_id=%s and noteno=%s "
                            c_val_1 = (dn_dtl[0],DN_id_1)
                            fbcursor.execute(c_sql_1,c_val_1,)
                            finsysdb.commit()

                            #----------Refresh Insert Tree--------#

                            for record in debitNote_tree.get_children():
                                    debitNote_tree.delete(record)

                            sql_pr="select * from auth_user where username=%s"
                            sql_pr_val=(nm_ent.get(),)
                            fbcursor.execute(sql_pr,sql_pr_val,)
                            pr_dtl=fbcursor.fetchone()

                            c_sql_1 = "SELECT * FROM app1_debitnote where usr_id=%s"
                            c_val_1 = (dn_dtl[0],)
                            fbcursor.execute(c_sql_1,c_val_1,)
                            c_data_1 = fbcursor.fetchall()

                            count0 = 0
                            for i in c_data_1:
                                if True:
                                    debitNote_tree.insert(parent='',index='end',iid=i,text='',values=(i[5],i[1],i[2],i[13],i[11])) 
                                    
                                else:
                                    pass
                            count0 += 1

                        else:
                            pass


                    debitnote_comb_1 = ttk.Combobox(debitNote_canvas,font=('arial 18'),justify='center')
                    debitnote_comb_1['values'] = ("Actions","Edit","Delete")
                    debitnote_comb_1.current(0)
                    window_debitnote_comb_1 = debitNote_canvas.create_window(0, 0, anchor="nw", width=140,height=45,window=debitnote_comb_1,tags=('vnbutton3'))
                    debitnote_comb_1.bind("<