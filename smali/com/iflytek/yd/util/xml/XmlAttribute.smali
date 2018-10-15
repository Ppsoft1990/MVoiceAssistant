.class public Lcom/iflytek/yd/util/xml/XmlAttribute;
.super Ljava/lang/Object;


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/iflytek/yd/util/xml/XmlAttribute;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/yd/util/xml/XmlAttribute;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/util/xml/XmlAttribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/util/xml/XmlAttribute;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/util/xml/XmlAttribute;->mName:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/util/xml/XmlAttribute;->mValue:Ljava/lang/String;

    return-void
.end method
