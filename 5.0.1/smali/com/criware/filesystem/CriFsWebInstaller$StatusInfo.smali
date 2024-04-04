.class public Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusInfo"
.end annotation


# instance fields
.field contents_size:J

.field error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

.field http_status_code:I

.field received_size:J

.field status:Lcom/criware/filesystem/CriFsWebInstaller$Status;

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;


# direct methods
.method public constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$StatusInfo;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
