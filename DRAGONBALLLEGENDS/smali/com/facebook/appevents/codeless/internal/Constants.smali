.class public final Lcom/facebook/appevents/codeless/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/appevents/codeless/internal/Constants;",
        "",
        "()V",
        "APP_INDEXING",
        "",
        "APP_INDEXING_ENABLED",
        "APP_INDEXING_SCHEDULE_INTERVAL_MS",
        "",
        "BUTTON_SAMPLING",
        "DEVICE_SESSION_ID",
        "EVENT_MAPPING_PATH_TYPE_KEY",
        "EXTINFO",
        "IS_CODELESS_EVENT_KEY",
        "MAX_TREE_DEPTH",
        "PATH_TYPE_ABSOLUTE",
        "PATH_TYPE_RELATIVE",
        "PLATFORM",
        "facebook-core_release"
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
.field public static final APP_INDEXING:Ljava/lang/String; = "app_indexing"

.field public static final APP_INDEXING_ENABLED:Ljava/lang/String; = "is_app_indexing_enabled"

.field public static final APP_INDEXING_SCHEDULE_INTERVAL_MS:I = 0x3e8

.field public static final BUTTON_SAMPLING:Ljava/lang/String; = "button_sampling"

.field public static final DEVICE_SESSION_ID:Ljava/lang/String; = "device_session_id"

.field public static final EVENT_MAPPING_PATH_TYPE_KEY:Ljava/lang/String; = "path_type"

.field public static final EXTINFO:Ljava/lang/String; = "extinfo"

.field public static final INSTANCE:Lcom/facebook/appevents/codeless/internal/Constants;

.field public static final IS_CODELESS_EVENT_KEY:Ljava/lang/String; = "_is_fb_codeless"

.field public static final MAX_TREE_DEPTH:I = 0x19

.field public static final PATH_TYPE_ABSOLUTE:Ljava/lang/String; = "absolute"

.field public static final PATH_TYPE_RELATIVE:Ljava/lang/String; = "relative"

.field public static final PLATFORM:Ljava/lang/String; = "android"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/codeless/internal/Constants;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/internal/Constants;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/Constants;->INSTANCE:Lcom/facebook/appevents/codeless/internal/Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
