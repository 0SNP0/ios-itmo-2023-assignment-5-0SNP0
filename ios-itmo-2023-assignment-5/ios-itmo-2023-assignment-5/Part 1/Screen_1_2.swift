import SwiftUI

struct Screen_1_2: View {

    var body: some View {
        VStack {
            EnterPasswordView()
            Spacer()
            VKButton()
        }
    }

}

struct EnterPasswordView: View {
    @State var password: String = ""
    var body: some View {
        VStack(spacing: 0) {
            Image("LogoVKID")
                .frame(height: 56)
            
            Text("Введите пароль")
                .font(.system(size: 21))
                .multilineTextAlignment(.center)
                .padding(.top, 4)
            
            SecureField("Введите пароль", text: $password)
                .font(.system(size: 16))
                .background {
                    Color(red: 242/256, green: 243/256, blue: 245/256)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black.opacity(0.12))
                        }
                        .cornerRadius(10)
                        .padding(-12)
                }
                .padding(.top, 26)
                .frame(width: 343)
            
            HStack {
                Button {
                } label: {
                    Text("Забыли или не установили пароль?")
                        .font(.system(size: 18))
                        .foregroundStyle(Color.blue)
                        .padding(.top, 22)
                        .padding(.horizontal, 16)
                }
                Spacer()
            }
        }
    }
}

struct VKButton: View {
    var body: some View {
        Button {
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                Text("Продолжить")
                    .font(.system(size: 17))
                    .foregroundColor(.white)
            }
        }
        .padding([.leading, .trailing], 12)
        .frame(height: 44)
    }
}

#Preview {
    Screen_1_2()
}
