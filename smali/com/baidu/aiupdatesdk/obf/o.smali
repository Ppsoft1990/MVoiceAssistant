.class public Lcom/baidu/aiupdatesdk/obf/o;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/o;->b:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<TF;TS;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v3

    .line 29
    :cond_1
    instance-of v5, p1, Lcom/baidu/aiupdatesdk/obf/o;

    if-nez v5, :cond_2

    move v3, v4

    .line 30
    goto :goto_0

    .line 34
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/baidu/aiupdatesdk/obf/o;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v2, "other":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<TF;TS;>;"
    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    iget-object v6, v2, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/o;->b:Ljava/lang/Object;

    iget-object v6, v2, Lcom/baidu/aiupdatesdk/obf/o;->b:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 35
    .end local v2    # "other":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<TF;TS;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 36
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 47
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<TF;TS;>;"
    const/16 v0, 0x11

    .line 48
    .local v0, "result":I
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 49
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/o;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 50
    return v0
.end method
