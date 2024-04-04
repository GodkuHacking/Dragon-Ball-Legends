.class public final synthetic Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$jkREo5kJnRm2JFVIT8NujJO706U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$jkREo5kJnRm2JFVIT8NujJO706U;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$jkREo5kJnRm2JFVIT8NujJO706U;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$jkREo5kJnRm2JFVIT8NujJO706U;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/-$$Lambda$DefaultHeartBeatInfo$jkREo5kJnRm2JFVIT8NujJO706U;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->lambda$storeHeartBeatInfo$3$DefaultHeartBeatInfo(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
