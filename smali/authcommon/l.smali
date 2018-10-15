.class final Lauthcommon/l;
.super Ljava/lang/Object;
.source "BusinessThread.java"

# interfaces
.implements Lauthcommon/ae$a;


# instance fields
.field private synthetic a:Lauthcommon/c;


# direct methods
.method constructor <init>(Lauthcommon/c;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/l;->a:Lauthcommon/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x19258

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lauthcommon/l;->a:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x18e70

    :cond_0
    iget-object v1, p0, Lauthcommon/l;->a:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lauthcommon/l;->a:Lauthcommon/c;

    const-string/jumbo v2, "resultInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
