.class final Lcom/google/android/gms/measurement/internal/zzed;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzee;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    const-string p1, "google_app_measurement_local.db"

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, p3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v1, "Opening the local database failed, dropping and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v0, "google_app_measurement_local.db"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzau()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to delete corrupted local db file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to open local database. Events will bypass local storage"

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :catch_2
    move-exception v0

    .line 13
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzak;->zzb(Lcom/google/android/gms/measurement/internal/zzel;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzed;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    const-string v3, "messages"

    const-string v4, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    const-string v5, "type,entry"

    const/4 v6, 0x0

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzak;->zza(Lcom/google/android/gms/measurement/internal/zzel;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
