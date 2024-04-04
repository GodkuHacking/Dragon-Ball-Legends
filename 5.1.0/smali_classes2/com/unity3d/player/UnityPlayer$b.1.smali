.class Lcom/unity3d/player/UnityPlayer$b;
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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$b;->l:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$b;->a:Lcom/unity3d/player/UnityPlayer;

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$b;->c:I

    iput-boolean p5, p0, Lcom/unity3d/player/UnityPlayer$b;->d:Z

    iput-boolean p6, p0, Lcom/unity3d/player/UnityPlayer$b;->e:Z

    iput-boolean p7, p0, Lcom/unity3d/player/UnityPlayer$b;->f:Z

    iput-boolean p8, p0, Lcom/unity3d/player/UnityPlayer$b;->g:Z

    iput-object p9, p0, Lcom/unity3d/player/UnityPlayer$b;->h:Ljava/lang/String;

    iput p10, p0, Lcom/unity3d/player/UnityPlayer$b;->i:I

    iput-boolean p11, p0, Lcom/unity3d/player/UnityPlayer$b;->j:Z

    iput-boolean p12, p0, Lcom/unity3d/player/UnityPlayer$b;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$b;->l:Lcom/unity3d/player/UnityPlayer;

    new-instance v14, Lcom/unity3d/player/B;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$b;->l:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmContext(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$b;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$b;->b:Ljava/lang/String;

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$b;->c:I

    iget-boolean v6, p0, Lcom/unity3d/player/UnityPlayer$b;->d:Z

    iget-boolean v7, p0, Lcom/unity3d/player/UnityPlayer$b;->e:Z

    iget-boolean v8, p0, Lcom/unity3d/player/UnityPlayer$b;->f:Z

    iget-boolean v9, p0, Lcom/unity3d/player/UnityPlayer$b;->g:Z

    iget-object v10, p0, Lcom/unity3d/player/UnityPlayer$b;->h:Ljava/lang/String;

    iget v11, p0, Lcom/unity3d/player/UnityPlayer$b;->i:I

    iget-boolean v12, p0, Lcom/unity3d/player/UnityPlayer$b;->j:Z

    iget-boolean v13, p0, Lcom/unity3d/player/UnityPlayer$b;->k:Z

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/unity3d/player/B;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V

    iput-object v14, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/B;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$b;->l:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/B;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$b$a;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$b$a;-><init>(Lcom/unity3d/player/UnityPlayer$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$b;->l:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/B;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$b;->l:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeReportKeyboardConfigChanged(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
