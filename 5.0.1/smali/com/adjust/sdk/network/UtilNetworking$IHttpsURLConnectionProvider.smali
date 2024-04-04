.class public interface abstract Lcom/adjust/sdk/network/UtilNetworking$IHttpsURLConnectionProvider;
.super Ljava/lang/Object;
.source "UtilNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/network/UtilNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHttpsURLConnectionProvider"
.end annotation


# virtual methods
.method public abstract generateHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
