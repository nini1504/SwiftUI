//
//  LoginView.swift
//  MyServices
//
//  Created by Turma02-2 on 11/03/25.
//

import SwiftUI

struct CadastroView: View {
    @StateObject var vm: ModelView
    @State private var login: String = ""
    @State private var senha: String = ""
    @State private var nome: String = ""
    @State private var telefone: String = ""
    @State private var cidade: String = ""
    @State private var estado: String = ""
    
    var body: some View {
        ZStack{
            Color.fundo.ignoresSafeArea()
            VStack{
                VStack(alignment: .center, spacing: 40){
                    VStack(spacing: 10){
                        VStack(alignment: .leading){
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .fill(.white)
                            .frame(width: .infinity, height: 70)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Nome")
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundStyle(Color.black.opacity(0.7))
                                        .frame(width: .infinity, height: 30)
                                        .cornerRadius(5)
                                        .padding(.horizontal, 5)
                                    TextField(text: $nome, prompt: Text("Digite seu nome")) {
                                    }.padding(.vertical, 5)
                                        .padding(.horizontal, 5)
                                }
                            }
                        }
                        VStack(alignment: .leading){
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .fill(.white)
                            .frame(width: .infinity, height: 70)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Telefone")
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundStyle(Color.black.opacity(0.7))
                                        .frame(width: .infinity, height: 30)
                                        .cornerRadius(5)
                                        .padding(.horizontal, 5)
                                    TextField(text: $telefone, prompt: Text("Digite seu telefone")) {
                                    }.padding(.vertical, 5)
                                        .padding(.horizontal, 5)
                                }
                            }
                        }
                        
                        
                        VStack(alignment: .leading){
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .fill(.white)
                            .frame(width: .infinity, height: 70)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Cidade")
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundStyle(Color.black.opacity(0.7))
                                        .frame(width: .infinity, height: 30)
                                        .cornerRadius(5)
                                        .padding(.horizontal, 5)
                                    TextField(text: $cidade, prompt: Text("Digite sua cidade")) {
                                    }.padding(.vertical, 5)
                                        .padding(.horizontal, 5)
                                }
                                
                            }
                            
                        }
                        
                        
                        VStack(alignment: .leading){
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .fill(.white)
                            .frame(width: .infinity, height: 70)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Estado")
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundStyle(Color.black.opacity(0.7))
                                        .frame(width: .infinity, height: 30)
                                        .cornerRadius(5)
                                        .padding(.horizontal, 5)
                                    TextField(text: $estado, prompt: Text("Digite seu estado")) {
                                    }.padding(.vertical, 5)
                                        .padding(.horizontal, 5)
                                }
                                
                            }
                            
                        }
                        
                        VStack(alignment: .leading){
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .fill(.white)
                            .frame(width: .infinity, height: 70)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Login")
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundStyle(Color.black.opacity(0.7))
                                        .frame(width: .infinity, height: 30)
                                        .cornerRadius(5)
                                        .padding(.horizontal, 5)
                                    TextField(text: $login, prompt: Text("Digite seu login")) {
                                        Text("Login")
                                    }.padding(.vertical, 5)
                                        .padding(.horizontal, 5)
                                }
                            }
                        }
                        
                        VStack(alignment: .leading){
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .fill(.white)
                            .frame(width: .infinity, height: 70)
                            .overlay {
                                VStack(alignment: .leading, spacing: 0){
                                    Text("Senha")
                                        .font(.system(size: 20))
                                        .bold()
                                        .foregroundStyle(Color.black.opacity(0.7))
                                        .frame(width: .infinity, height: 30)
                                        .cornerRadius(5)
                                        .padding(.horizontal, 5)
                                    SecureField(text: $senha, prompt: Text("Digite sua senha")) {
                                        Text("Senha")
                                    }.padding(.vertical, 5)
                                        .padding(.horizontal, 5)
                                }
                            }
                        }
                    }
                    
                    VStack{
                        Button {
                            var e: Endereco = Endereco(estado: estado, cidade: cidade)
                            var p: Perfil = Perfil(_id: "a7s9ff56806hd5f9h0f8d6d5g", _rev: "kg235kjv3f2j3j4b5c55683", nome: nome, foto: "", telefone: telefone, endereco: e, favoritos: [], historico: [], login: login, senha: senha)
                            
                            vm.arrayPerfis.append(p)
                        } label: {
                            Text("Criar conta")
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 10,
                                        style: .continuous
                                    )
                                    .fill(.blue.opacity(0.9))
                                    .frame(width: 280, height: 50)
                                )
                        }
                    }
                    
                    
                    
                }.padding()
                    .frame(maxWidth: .infinity, maxHeight: 600)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                
            }
        }
    }
}
