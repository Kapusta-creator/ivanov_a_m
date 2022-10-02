#include"queuep.h"

QueueP::Node::Node(const int& elem, std::unique_ptr<Node>& next)
	: value(elem)
{
	next_node = std::move(next);
}

QueueP::Node::Node(const int& elem)
	: value(elem)
{}


void QueueP::push(const int& elem) {
	if (head == nullptr)
		head = std::unique_ptr<Node>(new Node(elem));
	else {
		if (head->value >= elem) {
			head = std::unique_ptr<Node>(new Node(elem, head));
		}
		else {
			Node* tmp = head.get();
			while (tmp->next_node != nullptr && tmp->next_node->value <= elem) {
				tmp = tmp->next_node.get();
			}
			tmp->next_node = std::unique_ptr<Node>(new Node(elem, tmp->next_node));
		}
	}
}

void QueueP::pop() {
	if (head != nullptr) {
		head = std::move(head->next_node);
	}
}

const int& QueueP::top() const {
	return head->value;
}

QueueP::~QueueP() {
	while (head != nullptr) {
		head = std::move(head->next_node);
	}
}

bool QueueP::isEmpty() const {
	return head == nullptr;
}

QueueP& QueueP::operator=(const QueueP& right) {
	Node* tmp = right.head.get();
	if (tmp != nullptr) {
		head = std::unique_ptr<Node>(new Node(tmp->value));
		tmp = tmp->next_node.get();
	}
	Node* self_ptr = head.get();
	while (tmp != nullptr) {
		self_ptr->next_node = std::unique_ptr<Node>(new Node(tmp->value));
		self_ptr = self_ptr->next_node.get();
		tmp = tmp->next_node.get();
	}
	return *this;
}

QueueP::QueueP(const QueueP& copy) {
	*this = copy;
}

QueueP& QueueP::operator=(QueueP&& right) noexcept {
	if (head != nullptr) {
		head = std::move(right.head);
		Node* tmp = head->next_node.get();
		while (tmp != nullptr) {
			head->next_node = std::move(head->next_node);
			tmp = tmp->next_node.get();
		}
	}
	return *this;
}


QueueP::QueueP(QueueP&& right) noexcept {
	*this = right;
}