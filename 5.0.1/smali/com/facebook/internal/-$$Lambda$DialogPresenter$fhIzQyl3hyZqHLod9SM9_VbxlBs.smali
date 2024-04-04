.class public final synthetic Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/CallbackManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/CallbackManager;ILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;->f$0:Lcom/facebook/CallbackManager;

    iput p2, p0, Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;->f$1:I

    iput-object p3, p0, Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;->f$0:Lcom/facebook/CallbackManager;

    iget v1, p0, Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;->f$1:I

    iget-object v2, p0, Lcom/facebook/internal/-$$Lambda$DialogPresenter$fhIzQyl3hyZqHLod9SM9_VbxlBs;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/DialogPresenter;->lambda$fhIzQyl3hyZqHLod9SM9_VbxlBs(Lcom/facebook/CallbackManager;ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/util/Pair;)V

    return-void
.end method
