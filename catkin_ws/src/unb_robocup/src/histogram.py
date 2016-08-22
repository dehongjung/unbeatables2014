import cv2
import cv2.cv
import cv
import numpy as np

bins = np.arange(256).reshape(256,1)

class Histogram:
    
    def __init__(self):
        self.firstIm = []    
        self.flag_has_picture=0
    #Armazena a imagem inicial
    def getFirstImage(self, firstIm):
        self.firstIm = firstIm
        self.flag_has_picture=1
        cv2.imwrite('/home/nao/hist.jpg',firstIm)
    #compara os histogramas da entrada com a imagem inicial
    #retorna os resultados dos 3 canais do histograma e True se a media for maior que 0.5
    def compareHistograms(self, im):
        if(self.flag_has_picture==0):
            return True
        else:
            result = []
            if len(im.shape) == 2:
                color = [(255,255,255)]
            elif im.shape[2] == 3:
                color = [ (255,0,0),(0,255,0),(0,0,255) ]
            for ch, col in enumerate(color):
            
                hist = (cv2.calcHist([im],[ch],None,[256],[0,256]))
                cv2.normalize(hist,hist,0,255,cv2.NORM_MINMAX)
                
                firstHist = (cv2.calcHist([self.firstIm],[ch],None,[256],[0,256]))
                cv2.normalize(firstHist,firstHist,0,255,cv2.NORM_MINMAX)
                
                result.append(cv2.compareHist(firstHist, hist, 0))
           
            if((result[0]+result[1]+result[2])/3 > 0.6):
                return True
            else:
                return False
                


########################################
#########EXEMPLO########################
if __name__ == '__main__':
    fname1 = './histograma12.png'
    fname2 = './histograma22.png'
    print "usage : python hist.py <image_file>"

    im1 = cv2.imread(fname1)
    im2 = cv2.imread(fname2)
    
    #Cria objeto
    histogram = Histogram()
    
    #Armazena a imagem inicial
    histogram.getFirstImage(im1)
        
    #compara os histogramas da entrada com a imagem inicial
    #retorna os resultados dos 3 canais do histograma e True se a media for maior que 0.5
    result,isTheSame = histogram.compareHistograms(im2)
    print "result:"
    print result
    
    print result
    print isTheSame
