
AIState={}
AIState["INICIO_CALIBRAGEM"]=0
AIState["GIRA_5_GRAUS"]=1
AIState["CHECA_HISTOGRAMA"]=2
AIState["ANDA_LATERAL_ESQUERDA"]=3
AIState["INICIO_PRINCIPAL"]=4
AIState["DESVIA_ESQUERDA"]=5
AIState["DESVIA_DIREITA"]=6
AIState["DESVIA_FRENTE"]=7
AIState["GIRA_45_GRAUS"]=8
AIState["ANDA_FRENTE"]=9
AIState["TOP_ANDA_GIRA_DIREITA"]=10
AIState["TOP_ANDA_GIRA_ESQUERDA"]=11
AIState["TOP_ANDA_RETO"]=12
AIState["BOT_ANDA_GIRA_DIREITA"]=13
AIState["BOT_ANDA_GIRA_ESQUERDA"]=14
AIState["BOT_ANDA_RETO"]=15
AIState["CALIBRA_CHUTE"]=16
AIState["CONFERE_HISTOGRAMA"]=17
AIState["CHUTA"]=18
AIState["CONTORNA_BOLA"]=19

Events={}
Events["GOL"]=0
Events["NAO_GOL"]=1
Events["NAO_X_CENTROCONTADOR_MENOR"]=2
Events["X_CENTRO"]=3
Events["NAO_GOLCONTADOR_MENOR"]=4
Events["CONTADOR_MAIOR"]=5
Events["ROBO_ESQUERDA"]=6
Events["ROBO_DIREITA"]=7
Events["ROBO_FRENTE"]=8
Events["NAO_ROBOLINHANAO_GOL"]=9
Events["NAO_ROBONAO_LINHANAO_BOLA"]=10
Events["NAO_ROBOGOLNAO_BOLA"]=11
Events["NAO_ROBONAO_LINHABOLACAMCIMAX_MAIOR_CENTRO"]=12
Events["NAO_ROBONAO_LINHABOLACAMCIMAX_MENOR_CENTRO"]=13
Events["NAO_ROBONAO_LINHABOLACAMCIMAX_CENTRO"]=14
Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MAIORX_CENTRO"]=15
Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MAIORX_MENOR_CENTRO"]=16
Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MAIORX_MAIOR_CENTRO"]=17
Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MENOR"]=18
Events["NAO_CALIB"]=19
Events["CALIB"]=20
Events["HISTOGRAMA"]=21
Events["NAO_HISTOGRAMA"]=22
Events["INIT"] = 23
Events["NULL"] = 24
    





class StateMachine_Player:

    ##############################################################################
    #                         CONSTRUCTORS AND DESTRUCTORS
    ##############################################################################

    def __init__(self):
        #Init variables
        self.machine = [[0 for i in range(25)] for j in range(20)]
        self.currentState = AIState["INICIO_PRINCIPAL"]
        self.events = Events["NULL"]
        self.state = 0 #AIState
        self.event1 = 0 #Events
        
        #Init the machine 
        for state in range(len(AIState)):
            for event1 in range(len(Events)):
                self.machine[self.state][self.event1] = self.state

                        
        #TODO:now fill the machine in with the real values
        self.machine[AIState["INICIO_CALIBRAGEM"]][Events["NULL"]] = AIState["INICIO_CALIBRAGEM"]
        self.machine[AIState["INICIO_CALIBRAGEM"]][Events["GOL"]] = AIState["GIRA_5_GRAUS"]               
        self.machine[AIState["INICIO_CALIBRAGEM"]][Events["NAO_GOL"]] = AIState["ANDA_LATERAL_ESQUERDA"]
        
        self.machine[AIState["GIRA_5_GRAUS"]][Events["NAO_X_CENTROCONTADOR_MENOR"]] = AIState["GIRA_5_GRAUS"]
        self.machine[AIState["GIRA_5_GRAUS"]][Events["X_CENTRO"]] = AIState["CHECA_HISTOGRAMA"]
        self.machine[AIState["GIRA_5_GRAUS"]][Events["CONTADOR_MAIOR"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["ANDA_LATERAL_ESQUERDA"]][Events["NAO_GOLCONTADOR_MENOR"]] = AIState["ANDA_LATERAL_ESQUERDA"]
        self.machine[AIState["ANDA_LATERAL_ESQUERDA"]][Events["GOL"]] = AIState["GIRA_5_GRAUS"]
        self.machine[AIState["ANDA_LATERAL_ESQUERDA"]][Events["CONTADOR_MAIOR"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["CHECA_HISTOGRAMA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["ROBO_ESQUERDA"]] = AIState["DESVIA_DIREITA"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["ROBO_DIREITA"]] = AIState["DESVIA_ESQUERDA"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["ROBO_FRENTE"]] = AIState["DESVIA_FRENTE"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBOLINHANAO_GOL"]] = AIState["GIRA_45_GRAUS"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHANAO_BOLA"]] = AIState["ANDA_FRENTE"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBOGOLNAO_BOLA"]] = AIState["ANDA_FRENTE"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMCIMAX_MAIOR_CENTRO"]] = AIState["TOP_ANDA_GIRA_DIREITA"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMCIMAX_MENOR_CENTRO"]] = AIState["TOP_ANDA_GIRA_ESQUERDA"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMCIMAX_CENTRO"]] = AIState["TOP_ANDA_RETO"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MAIORX_CENTRO"]] = AIState["BOT_ANDA_RETO"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MAIORX_MENOR_CENTRO"]] = AIState["BOT_ANDA_GIRA_ESQUERDA"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MAIORX_MAIOR_CENTRO"]] = AIState["BOT_ANDA_GIRA_DIREITA"]
        self.machine[AIState["INICIO_PRINCIPAL"]][Events["NAO_ROBONAO_LINHABOLACAMBAIXOY_MENOR"]] = AIState["CALIBRA_CHUTE"]
        
        self.machine[AIState["CALIBRA_CHUTE"]][Events["NAO_CALIB"]] = AIState["CALIBRA_CHUTE"]
        self.machine[AIState["CALIBRA_CHUTE"]][Events["CALIB"]] = AIState["CONFERE_HISTOGRAMA"]
        
        self.machine[AIState["CONFERE_HISTOGRAMA"]][Events["HISTOGRAMA"]] = AIState["CHUTA"]
        self.machine[AIState["CONFERE_HISTOGRAMA"]][Events["NAO_HISTOGRAMA"]] = AIState["CONTORNA_BOLA"]
        
        self.machine[AIState["CONTORNA_BOLA"]][Events["HISTOGRAMA"]] = AIState["CHUTA"]
        self.machine[AIState["CONTORNA_BOLA"]][Events["NAO_HISTOGRAMA"]] = self.machine[AIState["INICIO_PRINCIPAL"]]
        
        self.machine[AIState["CHUTA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]

        self.machine[AIState["BOT_ANDA_GIRA_DIREITA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["BOT_ANDA_GIRA_ESQUERDA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["BOT_ANDA_RETO"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["TOP_ANDA_RETO"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["TOP_ANDA_GIRA_ESQUERDA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["TOP_ANDA_GIRA_DIREITA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["GIRA_45_GRAUS"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["DESVIA_DIREITA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        self.machine[AIState["DESVIA_ESQUERDA"]][Events["INIT"]] = AIState["INICIO_PRINCIPAL"]
        
        
        
        
        
           
    ##############################################################################
    #                         States
    ##############################################################################
    
    def GetCurrentState(self):
        return self.currentState
        
    #goal
    #GOL, NAO_GOL
    def IsGoal(self, goal):
        self.currentState = self.machine[self.currentState][Events[goal]]
        
    #camera
    #CAMCIMA,CAMBAIXO
    #
    #center
    #X_MAIOR_CENTRO, X_MENOR_CENTRO, X_CENTRO, Y_MAIORX_CENTRO, Y_MAIORX_MENOR_CENTRO, Y_MAIORX_MAIOR_CENTRO, Y_MENOR
    #
    def TrackingBall(self,camera,center):
        event="NAO_ROBONAO_LINHABOLA" + camera + center
        self.currentState = self.machine[self.currentState][Events[event]]
    
    #histogram
    #HISTOGRAMA, NAO_HISTOGRAMA
    def IsHistogram(self,histogram):
        self.currentState = self.machine[self.currentState][Events[histogram]]
    
    #side
    #ESQUERDA, DIREITA, FRENTE
    def IsRobotDetected(self,side):
        event="ROBO_" + side
        self.currentState = self.machine[self.currentState][Events[event]]    

    def LineIsClose(self):
        self.currentState = self.machine[self.currentState][Events["NAO_ROBOLINHANAO_GOL"]]
    
    #notLineOrGoal
    #GOL, NAO_LINHA
    def BallNotFound(self,notLineOrGoal):
        event = "NAO_ROBO" + notLineOrGoal + "NAO_BOLA"
        self.currentState = self.machine[self.currentState][Events[event]]
        
    #calibrate
    #CALIB, NAO_CALIB
    def IsCalibrated(self, calibrate):
        self.currentState = self.machine[self.currentState][Events[calibrate]]
    
    def CounterFinished(self):
        self.currentState = self.machine[self.currentState][Events["CONTADOR_MAIOR"]]
    
    #goalOrCenter
    #NAO_GOAL,NAO_X_CENTRO
    def CounterNotFinished(self, goalOrCenter):
        event = goalOrCenter + "CONTADOR_MENOR"
        self.currentState = self.machine[self.currentState][Events[event]]
    
    def GoToInit(self):
        self.currentState = self.machine[self.currentState][Events["INIT"]]
    
    def XCenter(self):
        self.currentState = self.machine[self.currentState][Events["X_CENTRO"]]
        
if __name__ == '__main__':
    
    machine = StateMachine_Player()
    event2 = None
    while(1):
        event = raw_input("Insira o evento: ")
        a = raw_input("Outro evento? (s/n) ")
        if a == 's':
            event2 = raw_input("Insira o evento: ")
        if (event == "GOL" or event == "NAO_GOL") and event2 == "IsGoal":
            machine.IsGoal(event)
        elif (event == "CAMCIMA" or event == "CAMBAIXO") and (event2 == "X_MAIOR_CENTRO" or event2 == "X_MENOR_CENTRO" or event2 == "X_CENTRO" or event2 == "Y_MAIORX_CENTRO" or event2 == "Y_MAIORX_MENOR_CENTRO" or event2 == "Y_MAIORX_MAIOR_CENTRO" or event2 == "Y_MENOR"):
            machine.TrackingBall(event,event2)
        elif event == "HISTOGRAMA" or event == "NAO_HISTOGRAMA":
            machine.IsHistogram(event)
        elif event == "ESQUERDA" or event == "DIREITA":
            machine.IsRobotDetected(event)
        elif event == "NAO_ROBOLINHANAO_GOL":
            machine.LineIsClose()
        elif (event == "GOL" or event == "NAO_LINHA") and event2 == "BallNotFound":
            machine.BallNotFound(event)
        elif event == "CALIB" or event == "NAO_CALIB":
            machine.IsCalibrated(event)
        elif event == "CONTADOR_MAIOR":
            machine.CounterFinished()
        elif (event == "NAO_GOAL" or event == "NAO_X_CENTRO") and event2 == "Counter":
            machine.CounterNotFinished(event)
        elif event == "INIT":
            machine.GoToInit()
        
        print machine.GetCurrentState()
                
            
            
            
