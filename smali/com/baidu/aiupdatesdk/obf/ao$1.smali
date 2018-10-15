.class Lcom/baidu/aiupdatesdk/obf/ao$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/ao;->a(Landroid/content/Intent;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/aiupdatesdk/obf/ao$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/ao;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/ao$1;->a:Lcom/baidu/aiupdatesdk/obf/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/aiupdatesdk/obf/ao$a;Lcom/baidu/aiupdatesdk/obf/ao$a;)I
    .locals 2

    iget v0, p2, Lcom/baidu/aiupdatesdk/obf/ao$a;->b:I

    iget v1, p1, Lcom/baidu/aiupdatesdk/obf/ao$a;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v1, p1, Lcom/baidu/aiupdatesdk/obf/ao$a;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/baidu/aiupdatesdk/obf/ao$a;->d:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/baidu/aiupdatesdk/obf/ao$a;->d:Z

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p2, Lcom/baidu/aiupdatesdk/obf/ao$a;->d:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/baidu/aiupdatesdk/obf/ao$a;

    check-cast p2, Lcom/baidu/aiupdatesdk/obf/ao$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/ao$1;->a(Lcom/baidu/aiupdatesdk/obf/ao$a;Lcom/baidu/aiupdatesdk/obf/ao$a;)I

    move-result v0

    return v0
.end method
