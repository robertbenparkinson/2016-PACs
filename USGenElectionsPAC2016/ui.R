library(shiny)



# Define the overall UI
shinyUI(
        
        # Use a fluid Bootstrap layout
        fluidPage(    
                
                # Give the page a title
                titlePanel("Donations to US Political Candidates by the Top 100 Political Action Committees"),
                
                # Generate a row with a sidebar
                sidebarLayout(      
                        
                        
                        # Define the sidebar with one input
                        sidebarPanel(
                                selectInput("polactcom", "Pick A Political Action Committee:",
                                            c("FACEBOOK", 
                                              "OATH STRATEGIES LLC", 
                                              "TARGET ENTERPRISES, LLC",             
                                              "PINPOINT MEDIA LLC",                  
                                              "NEW DAY MEDIA, LLC",                  
                                              "SRCP MEDIA, INC.",                    
                                              "RIGEL STRATEGIES LLC",                
                                              "ERROR IN FILING",                     
                                              "REVOLUTION AGENCY",                   
                                              "REDWAVE COMMUNICATIONS LLC",          
                                              "RED SEA, LLC",                        
                                              "ONMESSAGE INC.",                      
                                              "CONTENT CREATIVE MEDIA",              
                                              "INFOCISION MANAGEMENT CORP",          
                                              "ON THE MARK DIRECT, LLC",             
                                              "RED METRICS",                         
                                              "BRADY FOR CONGRESS",                  
                                              "FUSE",                                
                                              "NEYLAN & PARTNERS",                   
                                              "TIBERI FOR CONGRESS",                 
                                              "MH MEDIA, LLC",                       
                                              "VOLUNTEERS FOR SHIMKUS",              
                                              "HOYER FOR CONGRESS",                  
                                              "THE STONERIDGE GROUP LLC",            
                                              "RYAN FOR CONGRESS, INC.",             
                                              "SCALISE FOR CONGRESS",                
                                              "BILL SHUSTER FOR CONGRESS",           
                                              "UPTON FOR ALL OF US",                 
                                              "SRH MEDIA, INC.",                     
                                              "AMS COMMUNICATIONS, INC.",            
                                              "VOTER CONTACT SERVICES, LLC",         
                                              "WALDEN FOR CONGRESS",                 
                                              "DOLD FOR CONGRESS",                   
                                              "FRIENDS OF ERIK PAULSEN",             
                                              "TERRA STRATEGIES, LLC",               
                                              "GRAVES FOR CONGRESS",                 
                                              "DEL CIELO MEDIA, LLC",                
                                              "TOM REED FOR CONGRESS",               
                                              "MCHENRY FOR CONGRESS",               
                                              "RAND PAUL FOR PRESIDENT, INC.",       
                                              "SPECTRUM MARKETING COMPANIES",        
                                              "WATERFRONT STRATEGIES",               
                                              "MEDIA GROUP, INC.",               
                                              "STIVERS FOR CONGRESS",                
                                              "KYRSTEN SINEMA FOR CONGRESS",         
                                              "MULTI MEDIA SERVICES CORPORATION",    
                                              "DENHAM FOR CONGRESS",                 
                                              "FRIENDS OF JIM CLYBURN",              
                                              "PRECISION NETWORK LLC",    
                                              "KIND FOR CONGRESS COMMITTEE",         
                                              "RODNEY FOR CONGRESS",                 
                                              "SCOTT PETERS FOR CONGRESS",           
                                              "BLUEPRINT INTERACTIVE",               
                                              "GUTHRIE FOR CONGRESS",                
                                              "DEVIN NUNES CAMPAIGN COMMITTEE",      
                                              "PAT MEEHAN FOR CONGRESS",             
                                              "SRCP MEDIA INC.",                     
                                              "CROWLEY FOR CONGRESS",                
                                              "PRICE FOR CONGRESS",                  
                                              "WILSON GRAND COMMUNICATIONS",         
                                              "CAMPAIGN WORKSHOP",                   
                                              "PALLONE FOR CONGRESS",                
                                              "MULTI MEDIA SERVICES INC",            
                                              "STARBOARD STRATEGIC, INC.",           
                                              "COLLINS FOR CONGRESS",                
                                              "POLIQUIN FOR CONGRESS",               
                                              "COMSTOCK FOR CONGRESS",               
                                              "RYAN COSTELLO FOR CONGRESS",          
                                              "HUDSON FOR CONGRESS",                 
                                              "CARLOS CURBELO CONGRESS",             
                                              "JIM RENACCI FOR CONGRESS",            
                                              "CATHY MCMORRIS RODGERS FOR CONGRESS", 
                                              "VALADAO FOR CONGRESS",                
                                              "LYNN JENKINS FOR CONGRESS",           
                                              "PEOPLE FOR BEN",                      
                                              "THE LUKENS COMPANY",                  
                                              "FRIENDS OF CHERI BUSTOS",             
                                              "ELISE FOR CONGRESS",                  
                                              "GENE GREEN CONGRESSIONAL CAMPAIGN",   
                                              "HILLARY FOR AMERICA",                 
                                              "TARGET ENTERPRISES LLC",              
                                              "HURD FOR CONGRESS",                   
                                              "FRIENDS OF JEB HENSARLING",           
                                              "RED EAGLE MEDIA GROUP",               
                                              "KATKO FOR CONGRESS",                  
                                              "MCSALLY FOR CONGRESS",                
                                              "BLAINE FOR CONGRESS",                 
                                              "FRIENDS OF JOHN BOEHNER",             
                                              "RIGHT STRATEGIES LLC",                
                                              "KINZINGER FOR CONGRESS",              
                                              "DUFFY FOR CONGRESS",                  
                                              "NANCY PELOSI FOR CONGRESS",           
                                              "TERRI SEWELL FOR CONGRESS",           
                                              "PETE SESSIONS FOR CONGRESS",          
                                              "KURT SCHRADER FOR CONGRESS",          
                                              "SAVANNA COMMUNICATIONS LLC",          
                                              "ANN WAGNER FOR CONGRESS",             
                                              "RENEE ELLMERS FOR CONGRESS COMMITTEE",
                                              "PETE AGUILAR FOR CONGRESS",           
                                              "BILL FLORES FOR CONGRESS")),
                                hr(),
                                helpText("Data from US Federal Election Commision.")
                        ),
                        
                        # Create a spot for the barplot
                        mainPanel(
                                plotOutput("plot")  
                        )
                        
                )
        )
)