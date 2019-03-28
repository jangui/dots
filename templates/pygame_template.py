import sys
import pygame

def run_game():
    #initialization
    pygame.init()
    screen = pygame.display.set_mode((1200,800))
    pygame.display.set_caption("Unititled")
    bg_color = ((255, 255, 255))

#main loop
    while True:

        #watch for keyboard and mouse events
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                sys.exit()

        #set color
        screen.fill(bg_color)
        #print most recently drawn screen
        pygame.display.flip()

run_game()