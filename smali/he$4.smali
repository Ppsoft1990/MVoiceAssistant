.class Lhe$4;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhe;


# direct methods
.method constructor <init>(Lhe;)V
    .locals 0
    .param p1, "this$0"    # Lhe;

    .prologue
    .line 598
    iput-object p1, p0, Lhe$4;->a:Lhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 601
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    sget-object v3, Lil;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "contactCache":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 603
    const-string/jumbo v2, "ContactManager"

    const-string/jumbo v3, "last Splite Name contact info cache is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "contactCache":Ljava/lang/Object;
    :goto_0
    return-void

    .line 607
    .restart local v0    # "contactCache":Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhe$4;->a:Lhe;

    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "contactCache":Ljava/lang/Object;
    invoke-static {v2, v0}, Lhe;->a(Lhe;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 608
    const-string/jumbo v2, "ContactManager"

    const-string/jumbo v3, "getLastSplite NameContactInfoFromRom"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    const-string/jumbo v2, "ContactManager"

    const-string/jumbo v3, "get Splite Namecontact cache exception"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
