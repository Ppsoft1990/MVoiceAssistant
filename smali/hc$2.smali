.class final Lhc$2;
.super Ljava/lang/Object;
.source "ContactCompareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    sget-object v3, Lil;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "contactCache":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 139
    const-string/jumbo v2, "ContactCompareManager"

    const-string/jumbo v3, "last contact info cache is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "contactCache":Ljava/lang/Object;
    :goto_0
    return-void

    .line 143
    .restart local v0    # "contactCache":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "contactCache":Ljava/lang/Object;
    invoke-static {v0}, Lhc;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 144
    const-string/jumbo v2, "ContactCompareManager"

    const-string/jumbo v3, "getLastContactInfoFromRom"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v2, 0x1

    invoke-static {v2}, Lhc;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const-string/jumbo v2, "ContactCompareManager"

    const-string/jumbo v3, "get contact cache exception"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
