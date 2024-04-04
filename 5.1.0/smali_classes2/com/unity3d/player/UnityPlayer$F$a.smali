.class Lcom/unity3d/player/UnityPlayer$F$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$F;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$F;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$F;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer$F;->d:Lcom/unity3d/player/UnityPlayer$C;

    sget-object v2, Lcom/unity3d/player/UnityPlayer$C;->c:Lcom/unity3d/player/UnityPlayer$C;

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/unity3d/player/UnityPlayer$F;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeFocusChanged(Lcom/unity3d/player/UnityPlayer;Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    sget-object v1, Lcom/unity3d/player/UnityPlayer$C;->a:Lcom/unity3d/player/UnityPlayer$C;

    iput-object v1, v0, Lcom/unity3d/player/UnityPlayer$F;->d:Lcom/unity3d/player/UnityPlayer$C;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8dd

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/player/UnityPlayer$E;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$E;->h:Lcom/unity3d/player/UnityPlayer$E;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$F;->e:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$F;->e:I

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->executeGLThreadJobs()V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$F;->b:Z

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mgetHaveAndroidWindowSupport(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$F;->c:Z

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$F;->h:I

    if-ltz v2, :cond_5

    if-nez v2, :cond_4

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mgetSplashEnabled(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mDisableStaticSplashScreen(Lcom/unity3d/player/UnityPlayer;)V

    :cond_3
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmActivity(Lcom/unity3d/player/UnityPlayer;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mgetAutoReportFullyDrawnEnabled(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmActivity(Lcom/unity3d/player/UnityPlayer;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->reportFullyDrawn()V

    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$F;->h:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$F;->h:I

    :cond_5
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeRender(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mfinish(Lcom/unity3d/player/UnityPlayer;)V

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/unity3d/player/UnityPlayer$E;->c:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v4, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/unity3d/player/UnityPlayer$E;->b:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$F;->b:Z

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/unity3d/player/UnityPlayer$E;->a:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iput-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$F;->b:Z

    goto :goto_1

    :cond_9
    sget-object v4, Lcom/unity3d/player/UnityPlayer$E;->d:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iput-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$F;->c:Z

    goto :goto_1

    :cond_a
    sget-object v4, Lcom/unity3d/player/UnityPlayer$E;->e:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v4, :cond_b

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$F;->c:Z

    :goto_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$F$a;->a()V

    goto :goto_1

    :cond_b
    sget-object v4, Lcom/unity3d/player/UnityPlayer$E;->f:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object v4, p1, Lcom/unity3d/player/UnityPlayer$F;->d:Lcom/unity3d/player/UnityPlayer$C;

    sget-object v5, Lcom/unity3d/player/UnityPlayer$C;->a:Lcom/unity3d/player/UnityPlayer$C;

    if-ne v4, v5, :cond_c

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1, v2}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeFocusChanged(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_c
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    sget-object v2, Lcom/unity3d/player/UnityPlayer$C;->b:Lcom/unity3d/player/UnityPlayer$C;

    iput-object v2, p1, Lcom/unity3d/player/UnityPlayer$F;->d:Lcom/unity3d/player/UnityPlayer$C;

    goto :goto_1

    :cond_d
    sget-object v2, Lcom/unity3d/player/UnityPlayer$E;->g:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v2, :cond_e

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    sget-object v2, Lcom/unity3d/player/UnityPlayer$C;->c:Lcom/unity3d/player/UnityPlayer$C;

    iput-object v2, p1, Lcom/unity3d/player/UnityPlayer$F;->d:Lcom/unity3d/player/UnityPlayer$C;

    goto :goto_0

    :cond_e
    sget-object v2, Lcom/unity3d/player/UnityPlayer$E;->i:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v2, :cond_f

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getLaunchURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeSetLaunchURL(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    sget-object v2, Lcom/unity3d/player/UnityPlayer$E;->j:Lcom/unity3d/player/UnityPlayer$E;

    if-ne p1, v2, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-object v2, p1, Lcom/unity3d/player/UnityPlayer$F;->i:Lcom/unity3d/player/UnityPlayer;

    iget v4, p1, Lcom/unity3d/player/UnityPlayer$F;->f:I

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$F;->g:I

    invoke-static {v2, v4, p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeOrientationChanged(Lcom/unity3d/player/UnityPlayer;II)V

    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$F;->b:Z

    if-eqz v2, :cond_11

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$F;->e:I

    if-gtz v2, :cond_11

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$F;->a:Landroid/os/Handler;

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$F$a;->a:Lcom/unity3d/player/UnityPlayer$F;

    iget v0, p1, Lcom/unity3d/player/UnityPlayer$F;->e:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$F;->e:I

    :cond_11
    return v3
.end method
