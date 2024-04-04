.class Lcom/criware/filesystem/CriFsWebInstaller$1;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criware/filesystem/CriFsWebInstaller;->StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;

.field final synthetic val$params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;


# direct methods
.method constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    iput-object p2, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->val$params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 706
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    new-instance v1, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    invoke-static {v0, v1}, Lcom/criware/filesystem/CriFsWebInstaller;->access$202(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    .line 707
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->access$200(Lcom/criware/filesystem/CriFsWebInstaller;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->val$params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 708
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$1;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-static {v0, v1}, Lcom/criware/filesystem/CriFsWebInstaller;->access$302(Lcom/criware/filesystem/CriFsWebInstaller;Z)Z

    return-void
.end method
