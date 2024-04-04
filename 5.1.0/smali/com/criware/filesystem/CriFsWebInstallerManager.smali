.class public Lcom/criware/filesystem/CriFsWebInstallerManager;
.super Ljava/lang/Object;
.source "CriFsWebInstallerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;,
        Lcom/criware/filesystem/CriFsWebInstallerManager$LooseTrustManager;
    }
.end annotation


# instance fields
.field public allow_insecure_ssl:Z

.field public crc_enabled:Z

.field public inactive_timeout_sec:I

.field public installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/criware/filesystem/CriFsWebInstaller;",
            ">;"
        }
    .end annotation
.end field

.field public is_initialized:Z

.field public num_installers:I

.field private num_installers_max:I

.field public proxy_host:Ljava/lang/String;

.field public proxy_port:S

.field public request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

.field public user_agent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 19
    iput-short v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    return-void
.end method


# virtual methods
.method public CreateInstaller()Lcom/criware/filesystem/CriFsWebInstaller;
    .locals 2

    .line 64
    iget v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    iget v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers_max:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 65
    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {v0}, Lcom/criware/filesystem/CriFsWebInstaller;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    :cond_1
    return-object v0
.end method

.method public ExecuteMain()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criware/filesystem/CriFsWebInstaller;

    .line 79
    invoke-virtual {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->Update()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Manager_Finalize()V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criware/filesystem/CriFsWebInstaller;

    const/4 v2, 0x1

    .line 57
    iput-boolean v2, v1, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    .line 58
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    return-void
.end method

.method public Manager_Initialize(Lcom/criware/filesystem/CriFsWebInstaller$Config;)V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->num_installers:I

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    .line 36
    iget-boolean v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->allow_insecure_ssl:Z

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->allow_insecure_ssl:Z

    .line 37
    iget v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->inactive_timeout_sec:I

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->inactive_timeout_sec:I

    .line 38
    iget-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->proxy_host:Ljava/lang/String;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    .line 39
    iget-short v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->proxy_port:S

    iput-short v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    .line 40
    iget-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->user_agent:Ljava/lang/String;

    .line 41
    iget-boolean v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->crc_enabled:Z

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    .line 43
    iget v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers_max:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    iget p1, p1, Lcom/criware/filesystem/CriFsWebInstaller$Config;->max_request_fields:I

    invoke-direct {v0, p0, p1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;-><init>(Lcom/criware/filesystem/CriFsWebInstallerManager;I)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/criware/filesystem/CriFsWebInstallerManager;->is_initialized:Z

    return-void
.end method
