.class synthetic Lcom/growthpush/view/AlertActivity$3;
.super Ljava/lang/Object;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthpush/view/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$growthpush$view$DialogType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/growthpush/view/DialogType;->values()[Lcom/growthpush/view/DialogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/growthpush/view/AlertActivity$3;->$SwitchMap$com$growthpush$view$DialogType:[I

    :try_start_0
    sget-object v1, Lcom/growthpush/view/DialogType;->plain:Lcom/growthpush/view/DialogType;

    invoke-virtual {v1}, Lcom/growthpush/view/DialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
