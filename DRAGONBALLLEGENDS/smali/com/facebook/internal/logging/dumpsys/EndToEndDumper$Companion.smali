.class public final Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;
.super Ljava/lang/Object;
.source "EndToEndDumper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;",
        "getInstance",
        "()Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;",
        "setInstance",
        "(Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;)V",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

.field private static instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->$$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;

    return-object v0
.end method

.method public final setInstance(Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;)V
    .locals 0

    .line 31
    sput-object p1, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;

    return-void
.end method
