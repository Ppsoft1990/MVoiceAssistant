.class public final Lia;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "SqliteWrapper"

    const-string/jumbo v2, "Catch a SQLiteException when update: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-static {p0, v0}, Lia;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 95
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 60
    invoke-static {p1}, Lia;->a(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string/jumbo v0, "\u5185\u5b58\u4e0d\u8db3"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    return-void

    .line 64
    :cond_0
    throw p1
.end method

.method private static a(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .param p0, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
