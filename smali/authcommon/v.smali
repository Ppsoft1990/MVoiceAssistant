.class final Lauthcommon/v;
.super Ljava/lang/Object;
.source "BusinessThread.java"

# interfaces
.implements Lauthcommon/ae$a;


# instance fields
.field private synthetic a:Lauthcommon/c;


# direct methods
.method constructor <init>(Lauthcommon/c;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/v;->a:Lauthcommon/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const v1, 0x18e70

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x19258

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    const v2, 0x19456

    if-eq v2, v0, :cond_1

    const v2, 0x19457

    if-ne v2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lauthcommon/v;->a:Lauthcommon/c;

    invoke-static {v0, p1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "isMiguPassport"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "resultCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "commandid"

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/v;->a:Lauthcommon/c;

    invoke-static {v0, p1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lauthcommon/v;->a:Lauthcommon/c;

    const-string/jumbo v2, "resultInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0
.end method
