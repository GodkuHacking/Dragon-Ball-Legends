.class public Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;
.super Landroid/app/Fragment;
.source "NativeGalleryMediaPickerFragment.java"


# static fields
.field private static final MEDIA_REQUEST_CODE:I = 0xf113f

.field public static final MEDIA_TYPE_ID:Ljava/lang/String; = "NGMP_MEDIA_TYPE"

.field public static final MIME_ID:Ljava/lang/String; = "NGMP_MIME"

.field public static final SAVE_PATH_ID:Ljava/lang/String; = "NGMP_SAVE_PATH"

.field public static final SELECT_MULTIPLE_ID:Ljava/lang/String; = "NGMP_MULTIPLE"

.field public static final TITLE_ID:Ljava/lang/String; = "NGMP_TITLE"

.field public static preferGetContent:Z = false

.field public static tryPreserveFilenames:Z = false


# instance fields
.field private final mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

.field private savePathDirectory:Ljava/lang/String;

.field private savePathFilename:Ljava/lang/String;

.field private savedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectMultiple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeGalleryMediaReceiver;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    return-void
.end method

.method private copyToTempFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    const-string v0, "Exception:"

    const-string v1, "Unity"

    .line 194
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p1

    .line 200
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 201
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "_display_name"

    .line 202
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v9, v3

    goto/16 :goto_9

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v4, v9

    :goto_0
    if-eqz v3, :cond_2

    .line 211
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :catch_1
    move-exception v4

    move-object v3, v9

    .line 206
    :goto_1
    :try_start_2
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 211
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v4, v9

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    :cond_3
    const-string v4, "temp"

    .line 218
    :cond_4
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 221
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v9

    :goto_3
    const/4 v5, 0x1

    if-nez v3, :cond_7

    const/16 v3, 0x2e

    .line 228
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_6

    .line 229
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_6

    .line 230
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    const-string v3, ".tmp"

    .line 235
    :cond_7
    :goto_4
    sget-boolean v6, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->tryPreserveFilenames:Z

    const/4 v7, 0x0

    if-nez v6, :cond_8

    .line 236
    iget-object v4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathFilename:Ljava/lang/String;

    goto :goto_5

    .line 237
    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 238
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 242
    :cond_9
    :goto_5
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_a

    return-object v9

    .line 246
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savedFiles:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    move v8, v5

    move v6, v7

    .line 250
    :goto_6
    iget-object v10, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_c

    .line 252
    iget-object v10, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    :cond_b
    add-int/2addr v6, v5

    goto :goto_6

    .line 261
    :cond_c
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathDirectory:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 265
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v5, 0x1000

    :try_start_5
    new-array v5, v5, [B

    .line 269
    :goto_7
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_d

    .line 271
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 274
    :cond_d
    iget-boolean v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-eqz v5, :cond_f

    .line 276
    iget-object v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savedFiles:Ljava/util/ArrayList;

    if-nez v5, :cond_e

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savedFiles:Ljava/util/ArrayList;

    .line 279
    :cond_e
    iget-object v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_f
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 287
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 289
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_2
    move-exception v2

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v4, v9

    :goto_8
    if-eqz v4, :cond_10

    .line 287
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 289
    :cond_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p1

    .line 294
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v9

    :goto_9
    if-eqz v9, :cond_11

    .line 211
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11
    throw p1
.end method

.method private fetchPathsOfMultipleMedia(Ljava/util/ArrayList;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected media uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/yasirkula/unity/NativeGalleryUtils;->GetPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 164
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 182
    :catch_2
    :cond_1
    throw p1

    :catch_3
    :goto_1
    if-eqz v0, :cond_2

    .line 178
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 188
    :catch_4
    :cond_2
    invoke-direct {p0, p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->copyToTempFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const v0, 0xf113f

    if-eq p1, v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-boolean p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    const/4 v0, -0x1

    const-string v1, ""

    if-nez p1, :cond_5

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    move-object p1, v1

    .line 318
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p1

    .line 321
    :goto_1
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-eqz p1, :cond_c

    .line 322
    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 326
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 328
    invoke-direct {p0, p1, p3}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->fetchPathsOfMultipleMedia(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 330
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_9

    .line 332
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_8

    .line 333
    :cond_7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    .line 337
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    if-nez p2, :cond_a

    .line 340
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 342
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_4
    move-object v1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 345
    :cond_b
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-eqz p1, :cond_c

    .line 346
    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMultipleMediaReceived(Ljava/lang/String;)V

    .line 349
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_5

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "NGMP_MEDIA_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 67
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NGMP_MIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NGMP_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NGMP_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    .line 70
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NGMP_SAVE_PATH"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    iput-object v4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathFilename:Ljava/lang/String;

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 74
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathDirectory:Ljava/lang/String;

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    and-int/lit8 v8, p1, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 85
    :cond_5
    sget-boolean v10, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->preferGetContent:Z

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-nez v10, :cond_8

    if-ne v5, v3, :cond_8

    if-eq p1, v9, :cond_8

    const-string v2, "android.intent.action.PICK"

    if-ne p1, v3, :cond_6

    .line 88
    new-instance p1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    :cond_6
    if-ne p1, v7, :cond_7

    .line 90
    new-instance p1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    .line 92
    :cond_7
    new-instance p1, Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    .line 96
    :cond_8
    new-instance p1, Landroid/content/Intent;

    const/16 v10, 0x13

    if-le v5, v3, :cond_9

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v10, :cond_9

    const-string v11, "android.intent.action.OPEN_DOCUMENT"

    goto :goto_3

    :cond_9
    const-string v11, "android.intent.action.GET_CONTENT"

    :goto_3
    invoke-direct {p1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.OPENABLE"

    .line 97
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    iget-boolean v11, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-eqz v11, :cond_a

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-lt v11, v12, :cond_a

    const-string v11, "android.intent.extra.ALLOW_MULTIPLE"

    .line 101
    invoke-virtual {p1, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    if-le v5, v3, :cond_f

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_e

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    if-ne v2, v3, :cond_b

    const-string v2, "image/*"

    .line 112
    aput-object v2, v0, v4

    move v4, v3

    :cond_b
    if-ne v6, v7, :cond_c

    add-int/lit8 v2, v4, 0x1

    const-string v3, "video/*"

    .line 114
    aput-object v3, v0, v4

    move v4, v2

    :cond_c
    if-ne v8, v9, :cond_d

    const-string v2, "audio/*"

    .line 116
    aput-object v2, v0, v4

    :cond_d
    const-string v2, "android.intent.extra.MIME_TYPES"

    .line 118
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const-string v0, "*/*"

    .line 123
    :cond_f
    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_10

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const-string v0, "android.intent.extra.TITLE"

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_10
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0xf113f

    invoke-virtual {p0, p1, v0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    return-void
.end method
