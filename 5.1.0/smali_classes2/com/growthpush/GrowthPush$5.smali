.class Lcom/growthpush/GrowthPush$5;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush;->setTag(Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/GrowthPush;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:Lcom/growthpush/model/Tag$TagType;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/growthpush/GrowthPush$5;->this$0:Lcom/growthpush/GrowthPush;

    iput-object p2, p0, Lcom/growthpush/GrowthPush$5;->val$type:Lcom/growthpush/model/Tag$TagType;

    iput-object p3, p0, Lcom/growthpush/GrowthPush$5;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/growthpush/GrowthPush$5;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/growthpush/GrowthPush$5;->this$0:Lcom/growthpush/GrowthPush;

    iget-object v1, p0, Lcom/growthpush/GrowthPush$5;->val$type:Lcom/growthpush/model/Tag$TagType;

    iget-object v2, p0, Lcom/growthpush/GrowthPush$5;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/growthpush/GrowthPush$5;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/growthpush/GrowthPush;->access$1200(Lcom/growthpush/GrowthPush;Lcom/growthpush/model/Tag$TagType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
