.class public Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncTaskParam"
.end annotation


# instance fields
.field param_contents_size:J

.field param_dst_path:Ljava/lang/String;

.field param_received_size:J

.field param_src_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;


# direct methods
.method constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_src_path:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_dst_path:Ljava/lang/String;

    .line 110
    iput-wide p4, p0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_contents_size:J

    .line 111
    iput-wide p6, p0, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_received_size:J

    return-void
.end method
