.class final enum Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;
.super Ljava/lang/Enum;
.source "FirebaseExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/concurrent/FirebaseExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DirectExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

.field public static final enum INSTANCE:Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;->INSTANCE:Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    aput-object v0, v1, v2

    .line 131
    sput-object v1, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;->$VALUES:[Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;
    .locals 1

    .line 131
    const-class v0, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;
    .locals 1

    .line 131
    sget-object v0, Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;->$VALUES:[Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    invoke-virtual {v0}, [Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/concurrent/FirebaseExecutors$DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
