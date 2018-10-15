.class public Lazj;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static a(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 49
    invoke-static {p0}, Lazj;->a(Ljava/io/Closeable;)V

    .line 50
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 58
    invoke-static {p0}, Lazj;->a(Ljava/io/Closeable;)V

    .line 59
    return-void
.end method
