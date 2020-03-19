# coding=utf-8
# --------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.
# --------------------------------------------------------------------------

from msrest.serialization import Model


class QnADocumentsDTO(Model):
    """List of QnADTO.

    :param qna_documents: List of answers.
    :type qna_documents:
     list[~azure.cognitiveservices.knowledge.qnamaker.authoring.models.QnADTO]
    """

    _attribute_map = {
        'qna_documents': {'key': 'qnaDocuments', 'type': '[QnADTO]'},
    }

    def __init__(self, *, qna_documents=None, **kwargs) -> None:
        super(QnADocumentsDTO, self).__init__(**kwargs)
        self.qna_documents = qna_documents