.class final Lcom/unity3d/player/UnityPlayer$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$4;->l:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$4;->a:Lcom/unity3d/player/UnityPlayer;

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$4;->b:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$4;->c:I

    iput-boolean p5, p0, Lcom/unity3d/player/UnityPlayer$4;->d:Z

    iput-boolean p6, p0, Lcom/unity3d/player/UnityPlayer$4;->e:Z

    iput-boolean p7, p0, Lcom/unity3d/player/UnityPlayer$4;->f:Z

    iput-boolean p8, p0, Lcom/unity3d/player/UnityPlayer$4;->g:Z

    iput-object p9, p0, Lcom/unity3d/player/UnityPlayer$4;->h:Ljava/lang/String;

    iput p10, p0, Lcom/unity3d/player/UnityPlayer$4;->i:I

    iput-boolean p11, p0, Lcom/unity3d/player/UnityPlayer$4;->j:Z

    iput-boolean p12, p0, Lcom/unity3d/player/UnityPlayer$4;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->l:Lcom/unity3d/player/UnityPlayer;

    new-instance v13, Lcom/unity3d/player/i;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$4;->l:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->access$2300(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$4;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$4;->b:Ljava/lang/String;

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$4;->c:I

    iget-boolean v6, p0, Lcom/unity3d/player/UnityPlayer$4;->d:Z

    iget-boolean v7, p0, Lcom/unity3d/player/UnityPlayer$4;->e:Z

    iget-boolean v8, p0, Lcom/unity3d/player/UnityPlayer$4;->f:Z

    iget-object v9, p0, Lcom/unity3d/player/UnityPlayer$4;->h:Ljava/lang/String;

    iget v10, p0, Lcom/unity3d/player/UnityPlayer$4;->i:I

    iget-boolean v11, p0, Lcom/unity3d/player/UnityPlayer$4;->j:Z

    iget-boolean v12, p0, Lcom/unity3d/player/UnityPlayer$4;->k:Z

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/unity3d/player/i;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;IZZ)V

    iput-object v13, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/i;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->l:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/i;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$4$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$4$1;-><init>(Lcom/unity3d/player/UnityPlayer$4;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/i;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->l:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/i;

    invoke-virtual {v0}, Lcom/unity3d/player/i;->show()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$4;->l:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$2500(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
