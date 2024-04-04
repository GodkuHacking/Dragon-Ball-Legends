.class public Lcom/unity3d/player/AudioVolumeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/k;


# instance fields
.field private a:Lcom/unity3d/player/l;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unity3d/player/l;

    invoke-direct {v0, p1}, Lcom/unity3d/player/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/l;

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p0}, Lcom/unity3d/player/l;->a(ILcom/unity3d/player/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/l;

    invoke-virtual {v0}, Lcom/unity3d/player/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/l;

    return-void
.end method

.method public final native onAudioVolumeChanged(I)V
.end method
