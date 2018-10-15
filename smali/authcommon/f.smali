.class final Lauthcommon/f;
.super Ljava/lang/Object;
.source "BusinessThread.java"

# interfaces
.implements Lauthcommon/ae$a;


# instance fields
.field private synthetic a:Lauthcommon/c;


# direct methods
.method constructor <init>(Lauthcommon/c;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x19258

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "customerid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "deviceid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "deviceidtype"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v3}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "resultCode"

    const v5, 0x18e70

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v3}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "customerid"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "deviceid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "deviceidtype"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/f;->a:Lauthcommon/c;

    iget-object v1, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lauthcommon/f;->a:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauthcommon/f;->a:Lauthcommon/c;

    const-string/jumbo v2, "resultInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0
.end method
