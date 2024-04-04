.class Lcom/unity3d/player/ReflectionHelper$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:J

.field final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$c;->a:J

    iput-wide p3, p0, Lcom/unity3d/player/ReflectionHelper$c;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$c;->a:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$c;->b:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyFinalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    throw v0
.end method
