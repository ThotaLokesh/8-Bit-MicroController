for i in range(16):
    for j in range(16):
        print("R"+str(i*16+j)+":register_8bit port map(D"+str(i*16+j)+",clk,RST,W,R,Q"+str(i*16+j)+");")

    
