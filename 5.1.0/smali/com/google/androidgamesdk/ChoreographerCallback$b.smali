.class Lcom/google/androidgamesdk/ChoreographerCallback$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidgamesdk/ChoreographerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/google/androidgamesdk/ChoreographerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/androidgamesdk/ChoreographerCallback;Lcom/google/androidgamesdk/ChoreographerCallback$b-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/ChoreographerCallback$b;-><init>(Lcom/google/androidgamesdk/ChoreographerCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ChoreographerCallback"

    const-string v1, "Starting looper thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/androidgamesdk/ChoreographerCallback$b;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v1, "Terminating looper thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
