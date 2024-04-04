.class public final synthetic Lcom/google/firebase/messaging/ImageDownload$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@23.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic f$0:Lcom/google/firebase/messaging/ImageDownload;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/ImageDownload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/ImageDownload$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/ImageDownload;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/ImageDownload$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/ImageDownload;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/ImageDownload;->blockingDownload()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
