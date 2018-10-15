.class public Lbet;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0, p4}, Lbet;->b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\"; filename=\"%s\""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Type: application/octet-stream\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0, p3}, Lbet;->b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\"\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Type: application/octet-stream\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lbet;->a(Ljava/io/ByteArrayOutputStream;[B)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public static b(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "--"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "--"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "--"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, "\r\n"

    invoke-static {p0, v0}, Lbet;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
