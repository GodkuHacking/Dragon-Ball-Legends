.class public final synthetic Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$uc_1DjIo9va7eGD02CnuoSuHryc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$uc_1DjIo9va7eGD02CnuoSuHryc;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$uc_1DjIo9va7eGD02CnuoSuHryc;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->lambda$getAndClearStoredHeartBeatInfo$2$DefaultHeartBeatInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
