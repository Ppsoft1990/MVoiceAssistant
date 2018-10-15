.class Laer$1;
.super Ljava/lang/Object;
.source "PhoneListMsgItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laer;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/iflytek/common/adaptation/entity/SimCard;

.field final synthetic d:Laer;


# direct methods
.method constructor <init>(Laer;ZILcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 0
    .param p1, "this$0"    # Laer;

    .prologue
    .line 119
    iput-object p1, p0, Laer$1;->d:Laer;

    iput-boolean p2, p0, Laer$1;->a:Z

    iput p3, p0, Laer$1;->b:I

    iput-object p4, p0, Laer$1;->c:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v1, p0, Laer$1;->d:Laer;

    iget-boolean v2, p0, Laer$1;->a:Z

    iget v3, p0, Laer$1;->b:I

    invoke-static {v1, v2, v3}, Laer;->a(Laer;ZI)V

    .line 124
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 125
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneItem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laer$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 126
    iget-object v1, p0, Laer$1;->c:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    iget-object v1, p0, Laer$1;->d:Laer;

    iget v2, p0, Laer$1;->b:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laer;->a(ILjava/lang/String;)V

    .line 129
    return-void
.end method
