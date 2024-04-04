.class public final Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;
.super Ljava/lang/Object;
.source "CustomUpdateContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/CustomUpdateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB-\u0008\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000eJ\u0014\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\rR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;",
        "",
        "contextToken",
        "Lcom/facebook/gamingservices/GamingContext;",
        "text",
        "Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;",
        "image",
        "Landroid/graphics/Bitmap;",
        "(Lcom/facebook/gamingservices/GamingContext;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;)V",
        "media",
        "Lcom/facebook/gamingservices/model/CustomUpdateMedia;",
        "(Lcom/facebook/gamingservices/GamingContext;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V",
        "contextTokenId",
        "",
        "(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V",
        "<set-?>",
        "cta",
        "getCta",
        "()Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;",
        "data",
        "getData",
        "()Ljava/lang/String;",
        "bitmapToBase64String",
        "bitmap",
        "build",
        "Lcom/facebook/gamingservices/model/CustomUpdateContent;",
        "setCta",
        "setData",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contextTokenId:Ljava/lang/String;

.field private cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

.field private data:Ljava/lang/String;

.field private final image:Landroid/graphics/Bitmap;

.field private final media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

.field private final text:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;


# direct methods
.method public constructor <init>(Lcom/facebook/gamingservices/GamingContext;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "contextToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/facebook/gamingservices/GamingContext;->getContextID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/gamingservices/GamingContext;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V
    .locals 1

    const-string v0, "contextToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/facebook/gamingservices/GamingContext;->getContextID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->contextTokenId:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->text:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    .line 141
    iput-object p3, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->image:Landroid/graphics/Bitmap;

    .line 142
    iput-object p4, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    return-void
.end method

.method private final bitmapToBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 224
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    move-object v3, v0

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image/png;base64,"

    .line 227
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final build()Lcom/facebook/gamingservices/model/CustomUpdateContent;
    .locals 9

    .line 208
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->getGif()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    invoke-virtual {v3}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->getVideo()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_2

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CustomUpdateMedia, please set either gif or video"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->bitmapToBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-object v2, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->contextTokenId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 216
    new-instance v0, Lcom/facebook/gamingservices/model/CustomUpdateContent;

    .line 217
    iget-object v3, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->text:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    iget-object v4, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    iget-object v6, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    iget-object v7, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->data:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    .line 216
    invoke-direct/range {v1 .. v8}, Lcom/facebook/gamingservices/model/CustomUpdateContent;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateMedia;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 214
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter contextToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCta()Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final setCta(Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;)Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;
    .locals 1

    const-string v0, "cta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    return-object p0
.end method

.method public final setData(Ljava/lang/String;)Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->data:Ljava/lang/String;

    return-object p0
.end method
