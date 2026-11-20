FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY Auth.Api/Auth.Api.csproj Auth.Api/
RUN dotnet restore Auth.Api/Auth.Api.csproj
COPY . .
RUN dotnet publish Auth.Api/Auth.Api.csproj -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final

# Image source labels, added by Datadog.
LABEL org.opencontainers.image.source="https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"
LABEL com.datadoghq.image.source_path="services/auth/Dockerfile"

WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 8080
ENTRYPOINT ["dotnet", "Auth.Api.dll"]
