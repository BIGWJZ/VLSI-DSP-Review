import numpy as np 
#171180545 wjz
num_delay = 2   #延迟的数量
L = np.zeros((num_delay,num_delay,num_delay))
L[:,:,0] = np.array([[8,8],[4,4]]) #观察获得L(1)
K_forselect = range(1,num_delay+1)

for d in range(1,num_delay):
    for i in range(0,num_delay):
        for j in range(0,num_delay):
            max_list = [-1]
            K_temp = list(K_forselect)
            for k in K_forselect:
                if (L[i,k-1,0]==-1 or L[k-1,j,d-1]==-1):
                    K_temp.remove(k)
            for k in K_temp:
                max_list.append(L[i,k-1,0]+L[k-1,j,d-1])
            L[i,j,d] = max(max_list)

bound_list = []
for d in range(0,num_delay):
    for i in range(0,num_delay):
        if (L[i,i,d] != -1):
            bound_list.append(L[i,i,d]/(d+1))
iter_bound = max(bound_list)
print([round(i,2) for i in bound_list])
print("iteration bound is",iter_bound)