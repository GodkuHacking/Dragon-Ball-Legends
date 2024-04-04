.class public Lcom/criware/filesystem/CriFsWebInstaller$Config;
.super Ljava/lang/Object;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field allow_insecure_ssl:Z

.field crc_enabled:Z

.field inactive_timeout_sec:I

.field max_request_fields:I

.field num_installers:I

.field proxy_host:Ljava/lang/String;

.field proxy_port:S

.field user_agent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
