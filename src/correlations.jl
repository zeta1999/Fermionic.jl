prec = 15 #precision

##Single Particle
eigensp(s::State) = sort([round(eigvals(rhosp(s))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
eigensp(s::State_complex) = sort([round(eigvals(rhosp(s))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
eigensp(s::State_fixed) = sort([round(eigvals(rhosp(s))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
eigensp(s::State_complex_fixed) = sort([round(eigvals(rhosp(s))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
#For some reason, I can not compute eigenvalues
#directly from sparse matrices
eigensp(s::State_sparse) = sort([round(eigvals(Matrix(rhosp(s)))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
eigensp(s::State_sparse_complex) = sort([round(eigvals(Matrix(rhosp(s)))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
eigensp(s::State_sparse_fixed) = sort([round(eigvals(Matrix(rhosp(s)))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)
eigensp(s::State_sparse_complex_fixed) = sort([round(eigvals(Matrix(rhosp(s)))[i], digits = prec) for i in 1:dim(ope(s))], rev=true)

function ssp(sta::State)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2,eigen[i]) + (1 - eigen[i])*log(2,1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_fixed)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2,eigen[i]) + (1 - eigen[i])*log(2,1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_complex)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2,eigen[i]) + (1 - eigen[i])*log(2,1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_complex_fixed)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2,eigen[i]) + (1 - eigen[i])*log(2,1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_sparse)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2, eigen[i]) + (1 - eigen[i])*log(2, 1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_sparse_fixed)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2, eigen[i]) + (1 - eigen[i])*log(2, 1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_sparse_complex)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2, eigen[i]) + (1 - eigen[i])*log(2, 1-eigen[i]))
        end
    end
    return s/lene
end

function ssp(sta::State_sparse_complex_fixed)
    eigen = eigensp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2, eigen[i]) + (1 - eigen[i])*log(2, 1-eigen[i]))
        end
    end
    return s/lene
end


## Quasi Particles
eigenqsp(s::State) = sort([round(eigvals(rhoqsp(s))[i], digits = prec) for i in 1:(2*dim(ope(s)))], rev=true)
eigenqsp(s::State_complex) = sort([round(eigvals(rhoqsp(s))[i], digits = prec) for i in 1:(2*dim(ope(s)))], rev=true)
#For some reason, I can not compute eigenvalues
#directly from sparse matrices
eigenqsp(s::State_sparse) = sort([round(eigvals(Matrix(rhoqsp(s)))[i], digits = prec) for i in 1:(2*dim(ope(s)))], rev=true)
eigenqsp(s::State_sparse_complex) = sort([round(eigvals(Matrix(rhoqsp(s)))[i], digits = prec) for i in 1:(2*dim(ope(s)))], rev=true)


function sqsp(sta::State)
    eigen = eigenqsp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2,eigen[i]) + (1 - eigen[i])*log(2,1-eigen[i]))
        end
    end
    return s/lene
end

function sqsp(sta::State_complex)
    eigen = eigenqsp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2,eigen[i]) + (1 - eigen[i])*log(2,1-eigen[i]))
        end
    end
    return s/lene
end

function sqsp(sta::State_sparse)
    eigen = eigenqsp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2, eigen[i]) + (1 - eigen[i])*log(2, 1-eigen[i]))
        end
    end
    return s/lene
end

function sqsp(sta::State_sparse_complex)
    eigen = eigenqsp(sta)
    lene = length(eigen)
    s = 0
    for i in 1:lene
        if eigen[i] != 0 && eigen[i] != 1
            s = s - (eigen[i]*log(2, eigen[i]) + (1 - eigen[i])*log(2, 1-eigen[i]))
        end
    end
    return s/lene
end

#This macro serves for printing as a string the variable's name
#=
macro Name(arg)
   string(arg)
end
=#
#This function outputs 1 if s1 majorizes s2,
#-1 if s2 majorizes s1,
#0 if there is no majorization relation
function majorization_sp(s1, s2)
    e1 = eigensp(s1)
    e2 = eigensp(s2)
    count1 = 0
    count2 = 0
    d = length(e1)
    for j in 1:(d-1) #el último valor a veces hace problemas
        if sum([round(e1[i]-e2[i], digits = 10) for i in 1:j]) < 0
            count1 = count1 + 1
        elseif sum([round(e2[i]-e1[i], digits = 10) for i in 1:j]) < 0
            count2 = count2 + 1
        end
    end
    if count1 == (d-1)
        #println(@Name(s2)," sp majorizes ", @Name(s1))
        return -1
    elseif count2 == (d-1)
        #println(@Name(s1)," sp majorizes ", @Name(s2))
        return 1
    else
        #println("There is no sp majorization relation")
        return 0
    end
end


function majorization_qsp(s1, s2)
    e1 = eigenqsp(s1)
    e2 = eigenqsp(s2)
    count1 = 0
    count2 = 0
    d = length(e1)
    for j in 1:(d-1) #el último valor a veces hace problemas
        if sum([round(e1[i]-e2[i], digits = 10) for i in 1:j]) < 0
            count1 = count1 + 1
        elseif sum([round(e2[i]-e1[i], digits = 10) for i in 1:j]) < 0
            count2 = count2 + 1
        end
    end
    if count1 == (d-1)
        #println(@Name(s2)," qsp majorizes ", @Name(s1))
        return -1
    elseif count2 == (d-1)
        #println(@Name(s1)," qsp majorizes ", @Name(s2))
        return 1
    else
        #println("There is no qsp majorization relation")
        return 0
    end
end

function n_avg(s::Union{State,State_complex,State_sparse,State_sparse_complex})
    navg = Real(tr(rhosp(s)))
    return navg
end


function basis_m(o::Op, m::Int)
    d = dim(o)
    basm = spzeros(binomial(d,m),d)
    counter = 1
    baso = basis(o)
    for i in 1:2^d
        if sum(baso[i,:]) == m
            basm[counter,:] = baso[i,:]
            counter = counter + 1
        end
    end
    return basm
end
#= This code is faster for many iterations

count = 0
@time for i in 1:repeticiones
    #definimos estado premedida
    state_ran = spzeros(Complex{Float64},l)
    for i in 1:l
        if sum(basis(o)[i,:]) == nume
            state_ran[i] = 2*rand(Complex{Float64},1)[1]-1-im
        end
    end
    state_ran = state_ran/sqrt(state_ran'*state_ran)
    state_ran = State_sparse_complex(state_ran, o);
    #e = sort(eigvals(Matrix(rhoqsp(state_ran))), rev=true)

    #ahora medimos
    state_ran_medido = operator*st(state_ran);
    state_ran_medido = state_ran_medido/sqrt(state_ran_medido'*state_ran_medido)
    state_ran_medido = State_sparse_complex(state_ran_medido, o)
    #e_medido = sort(eigvals(Matrix(rhoqsp(state_ran_medido))), rev=true)

    #y chequeamos mayorización
    global count = count + majorization_qsp(state_ran_medido, state_ran)
end

if count == repeticiones
    println("Measured state qsp majorizes unmeasured state")
elseif count == -repeticiones
    println("Unmeasured state qsp majorizes measured state")
else
    println("There is no qsp majorization")
end

=#

####################################################




#the following are m-body matrices: work on progress
#for example, for a vector [0,1,0,0,1]->[2,5]
function indx(arr)
    l = length(arr)
    ind = spzeros(0)
    for i=1:l
        if arr[i] != 0
            ind = sparse([ind; i])
        end
    end
    return ind
end


function cof_mat(o, d, num, m, bas, estat)
    cmat = zeros(binomial(d,m),binomial(d,num-m))
    am = sparse([bas[i,:] for i in 1:binomial(d, m)])
    bas_nume_m = basis_m(o, num - m)
    amn = sparse([bas_nume_m[i,:] for i in 1:binomial(d, num-m)])
    for i in 1:binomial(d, m)
        ai = am[i]
        indi = indx(ai)
        for j in 1:binomial(d, num-m)
            aj = amn[j]
            if ai'*aj != 0
                cmat[i,j] = 0
            else
                permut = 0
                for k in 1:length(indi)
                    permut = permut + sum(aj[1:floor(Int,indi[k]-1)])
                end
                indij = indx(ai+aj)
                elem = Int(sum([2^(d-i) for i in indij]) + 1)
                cmat[i,j] = estat[elem] * (-1)^permut
            end
        end
    end
    return cmat
end


function cof_mat_comp(o, d, num, m, bas, estat)
    cmat = zeros(Complex{Float64},binomial(d,m),binomial(d,num-m))
    am = sparse([bas[i,:] for i in 1:binomial(d, m)])
    bas_nume_m = basis_m(o, num - m)
    amn = sparse([bas_nume_m[i,:] for i in 1:binomial(d, num-m)])
    for i in 1:binomial(d, m)
        ai = am[i]
        indi = indx(ai)
        for j in 1:binomial(d, num-m)
            aj = amn[j]
            if ai'*aj != 0
                cmat[i,j] = 0
            else
                permut = 0
                for k in 1:length(indi)
                    permut = permut + sum(aj[1:floor(Int,indi[k]-1)])
                end
                indij = indx(ai+aj)
                elem = Int(sum([2^(d-i) for i in indij]) + 1)
                cmat[i,j] = estat[elem] * (-1)^permut
            end
        end
    end
    return cmat
end


function cof_mat_fixed(o, d, num, m, bas, bas_tot, estat)
    cmat = zeros(binomial(d,m),binomial(d,num-m))
    am = sparse([bas[i,:] for i in 1:binomial(d, m)])
    bas_nume_m = basis_m(o, num - m)
    amn = sparse([bas_nume_m[i,:] for i in 1:binomial(d, num-m)])
    for i in 1:binomial(d, m)
        ai = am[i]
        indi = indx(ai)
        for j in 1:binomial(d, num-m)
            aj = amn[j]
            if ai'*aj != 0
                cmat[i,j] = 0
            else
                permut = 0
                for k in 1:length(indi)
                    permut = permut + sum(aj[1:floor(Int,indi[k]-1)])
                end
                indij = indx(ai+aj)
                elem = 1
                while indx(bas_tot[elem,:]) != indij
                    elem = elem + 1
                end
                cmat[i,j] = estat[elem] * (-1)^permut
            end
        end
    end
    return cmat
end


function cof_mat_fixed_comp(o, d, num, m, bas, bas_tot, estat)
    cmat = zeros(Complex{Float64},binomial(d,m),binomial(d,num-m))
    am = sparse([bas[i,:] for i in 1:binomial(d, m)])
    bas_nume_m = basis_m(o, num - m)
    amn = sparse([bas_nume_m[i,:] for i in 1:binomial(d, num-m)])
    for i in 1:binomial(d, m)
        ai = am[i]
        indi = indx(ai)
        for j in 1:binomial(d, num-m)
            aj = amn[j]
            if ai'*aj != 0
                cmat[i,j] = 0
            else
                permut = 0
                for k in 1:length(indi)
                    permut = permut + sum(aj[1:floor(Int,indi[k]-1)])
                end
                indij = indx(ai+aj)
                elem = 1
                while indx(bas_tot[elem,:]) != indij
                    elem = elem + 1
                end
                cmat[i,j] = estat[elem] * (-1)^permut
            end
        end
    end
    return cmat
end

function non_diag_ops(o, d, nume, m, bas, i)
    vec = indx(bas[i, :])
    #le es nume-1 me parece
    mel = 1
    for j in 1:m
        mel = mel*cdm(o, Int(vec[j]))
    end
    return mel
end


function diag_ops(o, d, nume, m, bas, u, and, i)
    ad = spzeros(2^d, 2^d)
    for j in 1:binomial(d,m)
        if round(u[j,i], digits=14) != 0
            ad = ad + u[j, i]*and[j]
        end
    end
    return ad
end



#main function
function rhom(s::Union{State,State_sparse}, m::Int64)
    o = ope(s)
    num = Int(round(n_avg(s),digits = 8))
    d = dim(o) #tengo que pasar a matrix lamentablemente
    rhomd = spzeros(binomial(d, m), binomial(d, m))
    bas = basis_m(o, m)
    estat = st(s)
    u, _ = svd(cof_mat(o, d, num, m, bas, estat))
    and = sparse([non_diag_ops(o, d, num, m, bas, j) for j in 1:binomial(d, m)])
    ad = sparse([diag_ops(o, d, num, m, bas, u, and, j) for j in 1:binomial(d, m)])
    #ad[1] es evaluar la funcion diagonal en i=1
    for i in 1:binomial(d, m)
        rhomd[i,i] = round(estat'*ad[i]*ad[i]'*estat, digits = 14)
    end
    return rhomd
end


#main function
function rhom(s::Union{State_complex,State_sparse_complex}, m::Int64)
    o = ope(s)
    num = Int(round(n_avg(s),digits = 8))
    d = dim(o) #tengo que pasar a matrix lamentablemente
    rhomd = spzeros(binomial(d, m), binomial(d, m))
    bas = basis_m(o, m)
    estat = st(s)
    u, _ = svd(cof_mat_comp(o, d, num, m, bas, estat))
    and = sparse([non_diag_ops(o, d, num, m, bas, j) for j in 1:binomial(d, m)])
    ad = sparse([diag_ops(o, d, num, m, bas, u, and, j) for j in 1:binomial(d, m)])
    #ad[1] es evaluar la funcion diagonal en i=1
    for i in 1:binomial(d, m)
        rhomd[i,i] = round(estat'*ad[i]*ad[i]'*estat, digits = 14)
    end
    return rhomd
end


function rhom(s::Union{State_fixed,State_sparse_fixed}, m::Int64)
    o = ope(s)
    num = nume(s)
    d = dim(o) #tengo que pasar a matrix lamentablemente
    rhomd = spzeros(binomial(d, m), binomial(d, m))
    bas_tot = basis_m(o, num)
    bas = basis_m(o, m)
    estat = st(s)
    u, _ = svd(cof_mat_fixed(o, d, num, m, bas, bas_tot, estat))
    and = sparse([non_diag_ops(o, d, num, m, bas, i) for i in 1:binomial(d, m)])
    ad = sparse([diag_ops(o, d, num, m, bas, u, and, i) for i in 1:binomial(d, m)])
    #ad[1] es evaluar la funcion diagonal en i=1
    for i in 1:binomial(d, m)
        rhomd[i,i] = round(estat'*fixed(ad[i]*ad[i]',num)*estat, digits = 14)
    end
    return rhomd
end


function rhom(s::Union{State_complex_fixed,State_sparse_complex_fixed}, m::Int64)
    o = ope(s)
    num = nume(s)
    d = dim(o) #tengo que pasar a matrix lamentablemente
    rhomd = spzeros(binomial(d, m), binomial(d, m))
    bas_tot = basis_m(o, num)
    bas = basis_m(o, m)
    estat = st(s)
    u, _ = svd(cof_mat_fixed_comp(o, d, num, m, bas, bas_tot, estat))
    and = sparse([non_diag_ops(o, d, num, m, bas, i) for i in 1:binomial(d, m)])
    ad = sparse([diag_ops(o, d, num, m, bas, u, and, i) for i in 1:binomial(d, m)])
    #ad[1] es evaluar la funcion diagonal en i=1
    for i in 1:binomial(d, m)
        rhomd[i,i] = round(estat'*fixed(ad[i]*ad[i]',num)*estat, digits = 14)
    end
    return rhomd
end
