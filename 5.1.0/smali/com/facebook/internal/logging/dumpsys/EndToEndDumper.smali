.class public interface abstract Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;
.super Ljava/lang/Object;
.source "EndToEndDumper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u00e6\u0080\u0001\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bJ-\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\tH&\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;",
        "",
        "maybeDump",
        "",
        "prefix",
        "",
        "writer",
        "Ljava/io/PrintWriter;",
        "args",
        "",
        "(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z",
        "Companion",
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
.field public static final Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;->$$INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumper$Companion;

    return-void
.end method


# virtual methods
.method public abstract maybeDump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method
