//
//  ProfileView.swift
//  MovieIsMe_Team1_M
//
//  Created by wasan jayid althagafi on 08/07/1447 AH.
//

import SwiftUI

struct ProfileView: View {

    @StateObject private var viewModel = ProfileViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()

                VStack(alignment: .leading, spacing: 18) {

                    Text("Profile")
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 8)

                    // User Card (Navigation to Profile info)
                    NavigationLink {
                        ProfileInfoView(viewModel: viewModel)
                    } label: {
                        HStack(spacing: 12) {
                            AvatarView(size: 44)

                            VStack(alignment: .leading, spacing: 4) {
                                Text(viewModel.fullName)
                                    .font(.system(size: 17, weight: .semibold))
                                    .foregroundColor(.white)

                                Text(viewModel.user.email)
                                    .font(.system(size: 13, weight: .regular))
                                    .foregroundColor(.white.opacity(0.6))
                            }

                            Spacer()

                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.white.opacity(0.35))
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 14)
                                .fill(Color.white.opacity(0.10))
                        )
                    }
                    .buttonStyle(.plain)

                    Text("Saved movies")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 6)

                    Spacer()

                    // Empty State (مثل الصورة)
                    if !viewModel.hasSavedMovies {
                        VStack(spacing: 14) {
                            Image(systemName: "rectangle.on.rectangle.angled")
                                .font(.system(size: 48, weight: .regular))
                                .foregroundColor(.white.opacity(0.18))

                            Text("No saved movies yet , start save\nyour favourites")
                                .font(.system(size: 14, weight: .regular))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white.opacity(0.25))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 30)
                    } else {
                        // لو عندك أفلام محفوظة لاحقًا
                        VStack(alignment: .leading, spacing: 10) {
                            ForEach(viewModel.savedMovies) { movie in
                                Text(movie.title)
                                    .foregroundColor(.white)
                            }
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal, 18)
            }
            // (Back + yellow) مثل تصميم iOS
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(spacing: 6) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 16, weight: .semibold))
                        Text("Back")
                            .font(.system(size: 16, weight: .regular))
                    }
                    .foregroundColor(.yellow)
                    .opacity(0.9)
                }
            }
        }
    }
}

// MARK: - Profile Info (Middle Screen)
private struct ProfileInfoView: View {

    @ObservedObject var viewModel: ProfileViewModel

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 18) {

                AvatarView(size: 96)

                VStack(spacing: 0) {
                    InfoRow(title: "First name", value: viewModel.user.firstName)
                    Divider().overlay(Color.white.opacity(0.12))
                    InfoRow(title: "Last name", value: viewModel.user.lastName)
                }
                .background(
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color.white.opacity(0.10))
                )
                .padding(.horizontal, 18)
                .padding(.top, 4)

                Spacer()

                Button {
                    viewModel.signOut()
                } label: {
                    Text("Sign Out")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundColor(.red.opacity(0.9))
                        .frame(maxWidth: .infinity)
                        .frame(height: 46)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white.opacity(0.10))
                        )
                }
                .padding(.horizontal, 18)
                .padding(.bottom, 14)
            }
            .padding(.top, 20)
        }
        .navigationTitle("Profile info")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    EditProfileView(viewModel: viewModel)
                        .onAppear { viewModel.syncDraftWithUser() }
                } label: {
                    Text("Edit")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

// MARK: - Edit Profile (Right Screen)
private struct EditProfileView: View {

    @ObservedObject var viewModel: ProfileViewModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 18) {

                ZStack {
                    AvatarView(size: 96, isDimmed: true)

                    Image(systemName: "camera.fill")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.yellow.opacity(0.9))
                        .padding(10)
                        .background(Circle().fill(Color.black.opacity(0.35)))
                }

                VStack(spacing: 0) {

                    HStack {
                        Text("First name")
                            .foregroundColor(.white.opacity(0.85))
                            .font(.system(size: 16, weight: .medium))

                        Spacer()

                        TextField("", text: $viewModel.draftFirstName)
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 56)

                    Divider().overlay(Color.white.opacity(0.12))

                    HStack {
                        Text("Last name")
                            .foregroundColor(.white.opacity(0.85))
                            .font(.system(size: 16, weight: .medium))

                        Spacer()

                        TextField("", text: $viewModel.draftLastName)
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 56)
                }
                .background(
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color.white.opacity(0.10))
                )
                .padding(.horizontal, 18)

                Spacer()
            }
            .padding(.top, 20)
        }
        .navigationTitle("Edit profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save") {
                    viewModel.saveEdits()
                    dismiss()
                }
                .foregroundColor(.yellow)
            }
        }
    }
}

// MARK: - Reusable UI
private struct AvatarView: View {
    var size: CGFloat
    var isDimmed: Bool = false

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white.opacity(0.14))
                .frame(width: size, height: size)

            Text("👩🏻")
                .font(.system(size: size * 0.55))
                .opacity(isDimmed ? 0.35 : 1.0)
        }
    }
}

private struct InfoRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white.opacity(0.85))

            Spacer()

            Text(value)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.white.opacity(0.85))
        }
        .padding(.horizontal, 16)
        .frame(height: 56)
    }
}

// MARK: - Preview
#Preview {
    NavigationStack {
        ProfileView()
    }
}
