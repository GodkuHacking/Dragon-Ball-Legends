.class public final enum Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;
.super Ljava/lang/Enum;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field public static final enum BUSY:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field public static final enum STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

.field public static final enum STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 148
    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const-string v1, "BUSY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->BUSY:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 149
    new-instance v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const-string v3, "STOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    .line 150
    new-instance v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const-string v5, "STOPPING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 147
    sput-object v5, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->$VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;
    .locals 1

    .line 147
    const-class v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    return-object p0
.end method

.method public static values()[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;
    .locals 1

    .line 147
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->$VALUES:[Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    invoke-virtual {v0}, [Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    return-object v0
.end method
