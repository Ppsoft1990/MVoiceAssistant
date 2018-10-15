.class public Lcom/migu/uem/statistics/event/bean/ActionData;
.super Ljava/lang/Object;


# instance fields
.field public actionKey:Ljava/lang/String;

.field public actionValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/statistics/event/bean/ActionData;->actionValue:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/statistics/event/bean/ActionData;->actionKey:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    :cond_1
    iput-object p2, p0, Lcom/migu/uem/statistics/event/bean/ActionData;->actionValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/migu/uem/statistics/event/bean/ActionData;->actionKey:Ljava/lang/String;

    return-void
.end method
