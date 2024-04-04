.class public Lcom/criware/filesystem/CriFsWebInstaller;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;,
        Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;,
        Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;,
        Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;,
        Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;,
        Lcom/criware/filesystem/CriFsWebInstaller$Config;,
        Lcom/criware/filesystem/CriFsWebInstaller$Error;,
        Lcom/criware/filesystem/CriFsWebInstaller$Status;
    }
.end annotation


# static fields
.field private static final ENABLE_DEBUG_PRINT:Z = false

.field private static manager:Lcom/criware/filesystem/CriFsWebInstallerManager;


# instance fields
.field private can_access_asynctask:Z

.field private crc_num:Ljava/util/zip/CRC32;

.field public is_stop_required:Z

.field private is_timeouted:Z

.field private is_waiting_to_start:Z

.field private start_time:J

.field private synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

.field private task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

.field private task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

.field private timeout_start_time:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    invoke-direct {v0, p0}, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    .line 138
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-boolean v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    return-void
.end method

.method private ClearMember()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 685
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    .line 686
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    .line 687
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 688
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 689
    iput-wide v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->start_time:J

    .line 690
    iput-wide v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    .line 692
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    .line 693
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    .line 694
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-boolean v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_0
    return-void
.end method

.method public static Create()Lcom/criware/filesystem/CriFsWebInstaller;
    .locals 1

    .line 773
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->CreateInstaller()Lcom/criware/filesystem/CriFsWebInstaller;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 777
    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private static native ErrorCallback(I)Z
.end method

.method public static ErrorEntry(I)Z
    .locals 0

    .line 874
    invoke-static {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorCallback(I)Z

    move-result p0

    return p0
.end method

.method public static ExecuteMain()V
    .locals 1

    .line 767
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->ExecuteMain()V

    :cond_0
    return-void
.end method

.method public static Finalize()V
    .locals 1

    .line 751
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->Manager_Finalize()V

    const/4 v0, 0x0

    .line 753
    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 756
    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    :goto_0
    return-void
.end method

.method private GetNow()J
    .locals 2

    .line 672
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 673
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Initialize(Lcom/criware/filesystem/CriFsWebInstaller$Config;)V
    .locals 1

    .line 741
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstallerManager;

    invoke-direct {v0}, Lcom/criware/filesystem/CriFsWebInstallerManager;-><init>()V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    .line 743
    invoke-virtual {v0, p0}, Lcom/criware/filesystem/CriFsWebInstallerManager;->Manager_Initialize(Lcom/criware/filesystem/CriFsWebInstaller$Config;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 746
    invoke-static {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    :goto_0
    return-void
.end method

.method private static IsRetryable(Lcom/criware/filesystem/CriFsWebInstaller$Error;J)Z
    .locals 5

    .line 677
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_DNS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    const-wide/16 v3, -0x1

    cmp-long p1, p1, v3

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public static SetRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 761
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v0, p0, p1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V
    .locals 5

    .line 701
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 702
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 703
    new-instance v1, Lcom/criware/filesystem/CriFsWebInstaller$1;

    invoke-direct {v1, p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$1;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 712
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 713
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 714
    new-instance v1, Lcom/criware/filesystem/CriFsWebInstaller$2;

    invoke-direct {v1, p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$2;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 724
    :cond_1
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-direct {v0, p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    .line 725
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 726
    iput-boolean v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0xa

    .line 730
    invoke-static {p1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    .line 731
    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 732
    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_MEMORY:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    return-void
.end method

.method static synthetic access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/criware/filesystem/CriFsWebInstaller;)Ljava/util/zip/CRC32;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method static synthetic access$200(Lcom/criware/filesystem/CriFsWebInstaller;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/criware/filesystem/CriFsWebInstaller;Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;)Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/criware/filesystem/CriFsWebInstaller;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    return p1
.end method


# virtual methods
.method public Copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 793
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    .line 794
    invoke-static {p1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    return-void

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    .line 799
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 801
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v6, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;Ljava/lang/String;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    .line 807
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    .line 809
    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-direct {p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller;->StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    return-void
.end method

.method public Destroy()V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_STOP:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 784
    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    return-void

    .line 787
    :cond_0
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->installer_list:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget v1, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->num_installers:I

    :cond_1
    return-void
.end method

.method public GetCRC32()J
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->crc_num:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetStatusInfo_contents_size()J
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    return-wide v0
.end method

.method public GetStatusInfo_error()I
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller$Error;->getValue()I

    move-result v0

    return v0
.end method

.method public GetStatusInfo_http_status_code()I
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    return v0
.end method

.method public GetStatusInfo_received_size()J
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    return-wide v0
.end method

.method public GetStatusInfo_status()I
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller$Status;->getValue()I

    move-result v0

    return v0
.end method

.method public IsCRCEnabled()I
    .locals 1

    .line 844
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget-boolean v0, v0, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Stop()V
    .locals 2

    .line 813
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$3;->$SwitchMap$com$criware$filesystem$CriFsWebInstaller$Status:[I

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v1, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    invoke-virtual {v1}, Lcom/criware/filesystem/CriFsWebInstaller$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    :goto_0
    return-void
.end method

.method public Update()V
    .locals 10

    .line 590
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_BUSY:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->GetTaskStatusInfo()Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 600
    :cond_1
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$3;->$SwitchMap$com$criware$filesystem$CriFsWebInstaller$TaskStatus:[I

    iget-object v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    invoke-virtual {v2}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_a

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 665
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    goto/16 :goto_0

    .line 620
    :cond_3
    iget-boolean v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    if-eqz v1, :cond_4

    .line 621
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_dst_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 623
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->ClearMember()V

    goto/16 :goto_0

    .line 624
    :cond_4
    iget-boolean v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    if-eqz v1, :cond_5

    .line 625
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 626
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 627
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 628
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_TIMEOUT:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    goto/16 :goto_0

    .line 630
    :cond_5
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v6, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v6, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 631
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v6, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v6, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 632
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v6

    div-long/2addr v6, v2

    .line 633
    iget-wide v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget v3, v3, Lcom/criware/filesystem/CriFsWebInstallerManager;->inactive_timeout_sec:I

    int-to-long v8, v3

    add-long/2addr v1, v8

    cmp-long v1, v1, v6

    if-gez v1, :cond_6

    .line 634
    iput-boolean v5, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    .line 636
    :cond_6
    iget-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne v1, v2, :cond_7

    .line 637
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_COMPLETE:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 638
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    iput v0, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    goto/16 :goto_0

    .line 640
    :cond_7
    iget-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    invoke-static {v1, v2, v3}, Lcom/criware/filesystem/CriFsWebInstaller;->IsRetryable(Lcom/criware/filesystem/CriFsWebInstaller$Error;J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 641
    iget-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    if-nez v0, :cond_8

    .line 642
    iput-boolean v5, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    .line 643
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->start_time:J

    goto/16 :goto_0

    .line 645
    :cond_8
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v0

    .line 646
    iget-wide v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->start_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 647
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_waiting_to_start:Z

    .line 649
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v1, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    iput-wide v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_contents_size:J

    .line 650
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v1, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    iput-wide v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_received_size:J

    .line 651
    iput-boolean v4, p0, Lcom/criware/filesystem/CriFsWebInstaller;->can_access_asynctask:Z

    .line 652
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task_params:Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-direct {p0, v0}, Lcom/criware/filesystem/CriFsWebInstaller;->StartTask(Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)V

    goto :goto_0

    .line 656
    :cond_9
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Status;->CRIFSWEBINSTALLER_STATUS_ERROR:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    iput-object v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

    .line 657
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-object v2, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iput-object v2, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    .line 658
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget v0, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    iput v0, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->http_status_code:I

    goto :goto_0

    .line 602
    :cond_a
    iget-boolean v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_stop_required:Z

    if-eqz v1, :cond_b

    .line 603
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-virtual {v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->Cancel()V

    goto :goto_0

    .line 605
    :cond_b
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v6, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iput-wide v6, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->contents_size:J

    .line 606
    iget-wide v6, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v8, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_c

    move v4, v5

    :cond_c
    if-eqz v4, :cond_d

    .line 608
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller;->synced_statusinfo:Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;

    iget-wide v4, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iput-wide v4, v1, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->received_size:J

    .line 609
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    goto :goto_0

    .line 611
    :cond_d
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller;->GetNow()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 612
    iget-wide v2, p0, Lcom/criware/filesystem/CriFsWebInstaller;->timeout_start_time:J

    sget-object v4, Lcom/criware/filesystem/CriFsWebInstaller;->manager:Lcom/criware/filesystem/CriFsWebInstallerManager;

    iget v4, v4, Lcom/criware/filesystem/CriFsWebInstallerManager;->inactive_timeout_sec:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    .line 613
    iput-boolean v5, p0, Lcom/criware/filesystem/CriFsWebInstaller;->is_timeouted:Z

    .line 614
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller;->task:Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;

    invoke-virtual {v0, v5}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->cancel(Z)Z

    :cond_e
    :goto_0
    return-void
.end method
