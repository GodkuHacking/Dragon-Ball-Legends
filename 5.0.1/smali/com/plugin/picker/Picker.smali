.class public Lcom/plugin/picker/Picker;
.super Landroid/app/Fragment;
.source "Picker.java"


# static fields
.field private static final COMPLETE_CALLBACK:Ljava/lang/String; = "OnComplete"

.field private static final FAILURE_CALLBACK:Ljava/lang/String; = "OnFailure"

.field private static final TAG:Ljava/lang/String; = "Picker"


# instance fields
.field private m_objectName:Ljava/lang/String;

.field private m_outputFileName:Ljava/lang/String;

.field private m_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private notifyFailure(Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/plugin/picker/Picker;->m_objectName:Ljava/lang/String;

    const-string v1, "OnFailure"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifySuccess(Ljava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/plugin/picker/Picker;->m_objectName:Ljava/lang/String;

    const-string v1, "OnComplete"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p0, "OnFailure"

    const-string p1, "Failed to open the picker()"

    .line 32
    invoke-static {p2, p0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/plugin/picker/Picker;

    invoke-direct {v1}, Lcom/plugin/picker/Picker;-><init>()V

    .line 37
    iput-object p0, v1, Lcom/plugin/picker/Picker;->m_title:Ljava/lang/String;

    .line 38
    iput-object p1, v1, Lcom/plugin/picker/Picker;->m_outputFileName:Ljava/lang/String;

    .line 39
    iput-object p2, v1, Lcom/plugin/picker/Picker;->m_objectName:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "Picker"

    .line 42
    invoke-virtual {p0, v1, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 43
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/plugin/picker/Picker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 69
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_a

    if-nez p3, :cond_1

    goto/16 :goto_3

    .line 77
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to pick the image(uri is null)"

    .line 80
    invoke-direct {p0, p1}, Lcom/plugin/picker/Picker;->notifyFailure(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/plugin/picker/Picker;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 87
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    :try_start_1
    const-string p2, "Failed to find the image(inputStream is null)"

    .line 93
    invoke-direct {p0, p2}, Lcom/plugin/picker/Picker;->notifyFailure(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p1, :cond_3

    .line 158
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    .line 97
    :cond_4
    :try_start_3
    iget-object p3, p0, Lcom/plugin/picker/Picker;->m_outputFileName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, 0x400

    :try_start_4
    new-array v1, v1, [B

    .line 104
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_5

    .line 106
    invoke-virtual {p3, v1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 131
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_6
    if-eqz p1, :cond_7

    .line 158
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 174
    :cond_7
    iget-object p1, p0, Lcom/plugin/picker/Picker;->m_outputFileName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/plugin/picker/Picker;->notifySuccess(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 112
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p3, :cond_8

    .line 122
    :try_start_8
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    .line 126
    :try_start_9
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 134
    :cond_8
    :goto_1
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p2

    .line 139
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p3

    if-eqz p1, :cond_9

    .line 149
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    .line 153
    :try_start_c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 161
    :cond_9
    :goto_2
    throw p3
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    const-string p1, "Failed to find the image(IOException caused)"

    .line 170
    invoke-direct {p0, p1}, Lcom/plugin/picker/Picker;->notifyFailure(Ljava/lang/String;)V

    return-void

    :catch_1
    const-string p1, "Failed to find the image(FileNotFoundException caused)"

    .line 165
    invoke-direct {p0, p1}, Lcom/plugin/picker/Picker;->notifyFailure(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_3
    const-string p1, "Failed to pick the image(data is null)"

    .line 73
    invoke-direct {p0, p1}, Lcom/plugin/picker/Picker;->notifyFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/plugin/picker/Picker;->m_title:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/plugin/picker/Picker;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
