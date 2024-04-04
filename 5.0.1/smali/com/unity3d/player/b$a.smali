.class final Lcom/unity3d/player/b$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/b;

.field private final b:Lcom/unity3d/player/b$b;

.field private final c:Landroid/media/AudioManager;

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/unity3d/player/b;Landroid/os/Handler;Landroid/media/AudioManager;ILcom/unity3d/player/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/b$a;->a:Lcom/unity3d/player/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/unity3d/player/b$a;->c:Landroid/media/AudioManager;

    const/4 p1, 0x3

    iput p1, p0, Lcom/unity3d/player/b$a;->d:I

    iput-object p5, p0, Lcom/unity3d/player/b$a;->b:Lcom/unity3d/player/b$b;

    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/b$a;->e:I

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/b$a;->c:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/b$a;->b:Lcom/unity3d/player/b$b;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/unity3d/player/b$a;->d:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget p2, p0, Lcom/unity3d/player/b$a;->e:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/unity3d/player/b$a;->e:I

    iget-object p2, p0, Lcom/unity3d/player/b$a;->b:Lcom/unity3d/player/b$b;

    invoke-interface {p2, p1}, Lcom/unity3d/player/b$b;->onAudioVolumeChanged(I)V

    :cond_0
    return-void
.end method
