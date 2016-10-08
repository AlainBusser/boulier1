L = [2]
c = 1
dessine = (abaque,boulier) ->
    t = ""
    for l in [0...boulier.length]
        t += "\n" + abaque[l] + " | "
        for m in [0...boulier[l]]
            t += "● "
    t


premiers = (n) ->
    a=2
    K=[0]
    L=[2]
    c=1
    while c<n-1
        a += 1
        I = [0...K.length]
        K[j] += 1 for j in I
        z=false
        for j in I
            K[j]=0 if K[j]==L[j]
            if K[j]==0 then z=true
        if not z
            K.push 0
            L.push a
        c += 1
    [L,K]

alert (dessine premiers(n)[0], premiers(n)[1] for n in [5..10])

